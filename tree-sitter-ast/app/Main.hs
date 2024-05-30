{-# LANGUAGE BlockArguments #-}
{-# LANGUAGE QuasiQuotes #-}

module Main where

import AST.NodeTypes (NodeTypes)
import AST.NodeTypes qualified as NT
import AST.Symbol qualified as Symbol
import Control.Monad qualified as Monad
import Control.Monad.Trans.Writer.CPS
import Data.Aeson qualified as Aeson
import Data.Foldable (for_)
import Data.List qualified as List
import Data.List.NonEmpty qualified as NE
import Data.Text as T
import Data.Text.IO qualified as T.IO
import NeatInterpolation
import System.Process (callProcess)
import Text.Pretty.Simple qualified as PS

main :: IO ()
main = do
  nodeTypes <- Aeson.decodeFileStrict @NodeTypes "tree-sitter-haskell/vendor/tree-sitter-haskell/src/node-types.json"
  nodeTypes <- case nodeTypes of
    Nothing -> undefined
    Just nodeTypes -> pure nodeTypes
  PS.pPrintForceColor nodeTypes
  let res = generateAll "AST.Haskell" nodeTypes
  T.IO.writeFile "haskell-ast/src/AST/Haskell.hs" res
  callProcess "ormolu" ["--mode", "inplace", "haskell-ast/src/AST/Haskell.hs"]

type M = Writer [Text]

emit :: Text -> M ()
emit x = tell [x]

generateAll :: Text -> NodeTypes -> Text
generateAll moduleName nodeTypes = T.unlines (execWriter (generateAllM moduleName nodeTypes))

generateAllM :: Text -> NodeTypes -> M ()
generateAllM moduleName nodeTypes = do
  emit
    [trimming|
  -- This file was generated! DO NOT EDIT!

  {-# LANGUAGE NoImplicitPrelude #-}
  {-# OPTIONS_GHC -Wno-unused-local-binds #-}
  {-# OPTIONS_GHC -Wno-name-shadowing #-}
  {-# HLINT ignore "Use camelCase" #-}

  module $moduleName where

  import qualified Prelude
  import qualified AST.Cast
  import qualified AST.Token
  import qualified AST.Node
  import qualified Data.Sum as Sum
  import qualified Data.List.NonEmpty
  import qualified TreeSitter.Api as Api
  import qualified AST.Runtime
  import qualified Data.Map.Strict
  |]

  for_ nodeTypes \dt -> do
    generate False dt

  pure ()

generate :: Bool -> NT.Datatype -> M ()
generate skip dt = do
  if skip
    then generateSkippedDatatype dt
    else generateDatatype dt

generateDatatype :: NT.Datatype -> M ()
generateDatatype dt = do
  let name = NT.datatypeName dt
  let status = NT.datatypeNameStatus dt
  case dt of
    NT.SumType {datatypeSubtypes} -> do
      generateLeafType name status
      pure ()
    -- don't know how to deal with these
    NT.ProductType {datatypeNameStatus = NT.Anonymous, datatypeFields = _ : _} -> pure ()
    NT.ProductType {datatypeChildren, datatypeFields} -> do
      generateProductType name datatypeChildren datatypeFields
      pure ()
    NT.LeafType {} -> do
      generateLeafType name status
  pure ()

generateProductType :: Text -> Maybe NT.Children -> [(Text, NT.Field)] -> M ()
generateProductType nodeName children fields = do
  let name = convertName nodeName
  emit [trimming|data $name = $name {|]
  commaList fields \(fieldName, field) -> do
    let hsFieldName = T.pack (Symbol.toHaskellCamelCaseIdentifier (T.unpack fieldName))
    let hsTy = fieldToTy field
    emit [trimming|$hsFieldName :: $hsTy|]
  emit "  }"
  emit ""
  genProductTypeCast nodeName children fields
  pure ()

genProductTypeCast :: Text -> Maybe NT.Children -> [(Text, NT.Field)] -> M ()
genProductTypeCast nodeName children fields = do
  let name = convertName nodeName
  let fieldsWithNum = List.zip [0 :: Int ..] $ fmap fst fields
  let argNames = fmap (\(i, _) -> "arg" <> T.pack (show i)) fieldsWithNum
  let allArgs = T.intercalate " " argNames

  -- function start
  emit
    [trimming|
  cast_$name :: Api.Node -> Prelude.Maybe $name
  cast_$name dynNode = do {
  |]
  emit "let (positional, namedMap) = AST.Runtime.getChildDescription dynNode;"
  for_ fields \(fieldName, _field) -> do
    let hsFieldName = T.pack (Symbol.toHaskellCamelCaseIdentifier (T.unpack fieldName))
    emit [trimming|; $hsFieldName <- (Data.Map.Strict.lookup "$fieldName" namedMap) ;|]
    emit [trimming|; $hsFieldName <- (Prelude.mapM AST.Cast.cast $hsFieldName ) ;|]
  for_ fields \(fieldName, field) -> do
    let hsFieldName = T.pack (Symbol.toHaskellCamelCaseIdentifier (T.unpack fieldName))
    case (NT.fieldRequired field, NT.fieldMultiple field) of
      (NT.Required, NT.Multiple) -> emit [trimming|; $hsFieldName <- Data.List.NonEmpty.nonEmpty $hsFieldName |]
      (NT.Required, NT.Single) -> emit [trimming|; $hsFieldName <-  AST.Runtime.listIsSingle $hsFieldName ;|]
      -- its already a list
      (NT.Optional, NT.Multiple) -> pure ()
      (NT.Optional, NT.Single) -> emit [trimming|; $hsFieldName <- AST.Runtime.listOptionalSingle $hsFieldName ;|]
    let hsFieldName = T.pack (Symbol.toHaskellCamelCaseIdentifier (T.unpack fieldName))
    -- emit [trimming|$hsFieldName = $hsFieldName|]
    pure ()

  emit [trimming|; Prelude.pure $name {|]
  commaList fields \(fieldName, _field) -> do
    let hsFieldName = T.pack (Symbol.toHaskellCamelCaseIdentifier (T.unpack fieldName))
    emit [trimming|$hsFieldName|]
  emit [trimming|} ;|]

  emit "}"
  -- function endBy

  -- instance startByte
  emit
    [trimming|
    instance AST.Cast.Cast $name where
      cast = cast_$name
    |]

  pure ()

commaList :: [a] -> (a -> M b) -> M ()
commaList ts f = for_ (List.zip [0 ..] ts) \(i, t) -> do
  Monad.void $ f t
  Monad.when (i < len - 1) do
    emit ","
  where
    len = List.length ts

fieldToTy :: NT.Field -> Text
fieldToTy field = case (NT.fieldRequired field, NT.fieldMultiple field) of
  (NT.Required, NT.Multiple) -> [trimming|(Data.List.NonEmpty.NonEmpty $innerTy)|]
  (NT.Required, NT.Single) -> innerTy
  (NT.Optional, NT.Multiple) -> [trimming|([$innerTy])|]
  (NT.Optional, NT.Single) -> [trimming|(Prelude.Maybe $innerTy)|]
  where
    innerTy = "(AST.Node.Node " <> nodeTypesToTy (NE.toList (NT.fieldTypes field)) <> ")"

nodeTypesToTy :: [NT.Type] -> Text
nodeTypesToTy tys = "(" <> T.intercalate " Sum.:+ " (fmap nodeTypeToTy tys) <> " Sum.:+ Sum.Nil)"

nodeTypeToTy :: NT.Type -> Text
nodeTypeToTy ty = do
  let fieldType = NT.fieldType ty
  case NT.isNamed ty of
    NT.Named -> convertName fieldType
    NT.Anonymous -> [trimming|(AST.Token.Token "$fieldType")|]

generateSkippedDatatype :: NT.Datatype -> M ()
generateSkippedDatatype dt = do
  let name = NT.datatypeName dt
  case dt of
    NT.SumType {} -> generateLeafType name NT.Named
    NT.ProductType {} -> generateLeafType name NT.Named
    NT.LeafType {datatypeNameStatus} ->
      generateLeafType name datatypeNameStatus

convertName :: Text -> Text
convertName = T.pack . Symbol.toHaskellPascalCaseIdentifier . T.unpack

generateLeafType :: Text -> NT.Named -> M ()
generateLeafType name NT.Named = do
  let ident = T.pack (Symbol.toHaskellPascalCaseIdentifier (T.unpack name))
  emit
    [trimming|
    data $ident = $ident
      deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)

    instance AST.Cast.Cast $ident where
      cast _ = Prelude.pure $ident
      |]
generateLeafType _name NT.Anonymous = pure ()

{-# LANGUAGE BlockArguments #-}
{-# LANGUAGE QuasiQuotes #-}

module Main (main) where

import AST qualified
import AST.Haskell qualified
import AST.Haskell qualified as Haskell
import Data.Maybe qualified as Maybe
import Data.Sum
import Data.Text (Text)
import Data.Text.Lazy qualified as TL
import NeatInterpolation
import Test.Tasty
import Test.Tasty.Expect
import Test.Tasty.HUnit
import Text.Pretty.Simple (pShowNoColor)

testParseDyn :: String -> Expect -> Text -> TestTree
testParseDyn name ex source = test name ex $ do
  pure $ TL.toStrict $ pShowNoColor $ AST.getDynNode $ Haskell.parse $ source

testParse :: String -> Expect -> Text -> TestTree
testParse name ex source = test name ex $ do
  pure $ TL.toStrict $ pShowNoColor $ Haskell.parse $ source

emojiCode :: Text
emojiCode =
  [trimming|
  module Main where

  s = "💀"

  t = "x"
  |]

main :: IO ()
main = do
  let ex = [expect||]
  print ex
  -- getCurrentWorkingDirectory >>= print
  defaultMainWithIngredients (expectIngredient : defaultIngredients) $
    testGroup
      "main"
      [ ( testCase "First" $
            (1 :: Int) @?= 1
        ),
        ( testParseDyn
            "Parse Unicode"
            [expect|"haskell@[0:0 - 4:7]"
    [ "header@[0:0 - 0:17]"
        [ "module@[0:0 - 0:6]" []
        , "module@[0:7 - 0:11]"
            [ "module_id@[0:7 - 0:11]" [] ]
        , "where@[0:12 - 0:17]" []
        ]
    , "declarations@[2:0 - 4:7]"
        [ "bind@[2:0 - 2:10]"
            [ "variable@[2:0 - 2:1]" []
            , "match@[2:2 - 2:10]"
                [ "=@[2:2 - 2:3]" []
                , "literal@[2:4 - 2:10]"
                    [ "string@[2:4 - 2:10]" [] ]
                ]
            ]
        , "bind@[4:0 - 4:7]"
            [ "variable@[4:0 - 4:1]" []
            , "match@[4:2 - 4:7]"
                [ "=@[4:2 - 4:3]" []
                , "literal@[4:4 - 4:7]"
                    [ "string@[4:4 - 4:7]" [] ]
                ]
            ]
        ]
    ]|]
            emojiCode
        ),
        ( test
            ""
            [expect|Just
    ( "string@[4:4 - 4:7]" [] )|]
            do
              let hs = Haskell.parse emojiCode
              let node = AST.getDynNode hs
              let point = AST.Point {AST.row = 4, AST.col = 5}
              let res = AST.getDeepestDynNodeContaining point node
              pure $ pShow res
        ),
        ( test
            ""
            [expect|Just
    ( "literal@[4:4 - 4:7]"
    )|]
            do
              let hs = Haskell.parse emojiCode
              let node = AST.getDynNode hs
              let point = AST.Point {AST.row = 4, AST.col = 5}
              let res = AST.getDeepestContaining @AST.Haskell.Literal point node
              pure $ pShow (AST.getDynNode <$> res)
        ),
        ( test
            ""
            [expect|Just
    ( "variable@[24:0 - 24:17]" [] )|]
            do
              let hs = Haskell.parse weirdSource
              let node = AST.getDynNode hs
              let point = AST.Point {AST.row = 24, AST.col = 0}
              let res = AST.getDeepestContaining @AutoImportTypes point node
              pure $ pShow (AST.getDynNode <$> res)
        )
      ]

type AutoImportTypes =
  Haskell.Name
    :+ Haskell.Constructor
    :+ Haskell.Qualified
    :+ Haskell.Variable
    :+ Nil

pShow :: (Show a) => a -> Text
pShow = TL.toStrict . pShowNoColor

weirdSource :: Text
weirdSource =
  [trimming|
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ViewPatterns #-}
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}

{-# HLINT ignore "Avoid lambda using `infix`" #-}

module StaticLS.IDE.CodeActions.AutoImport where

import AST qualified
import AST.Haskell qualified as Haskell
import Control.Monad.Except
import Control.Monad.Trans.Maybe (MaybeT (..))
import Data.Coerce (coerce)
import Data.Text (Text)
import Data.Text qualified as T
import Database.SQLite.Simple
import GHC.Plugins qualified as GHC
import HieDb
import Language.LSP.Protocol.Types qualified as LSP
import StaticLS.HIE
import StaticLS.HIE.File
import StaticLS.SDoc (showGhc)
import StaticLS.StaticEnv

findModulesForDef :: HieDb -> Text -> IO [Text]
findModulesForDef (getConn -> conn) name = do
  res <-
    query @_ @(Only Text)
      conn
      "SELECT DISTINCT exports.mod \
      \FROM exports \
      \WHERE exports.occ LIKE ?"
      (Only (T.pack "_:" <> name))
  pure (coerce res)

getModulesToImport ::
  (HasCallStack, ()) =>
  LSP.TextDocumentIdentifier ->
  LSP.Position ->
  StaticLs [Text]
getModulesToImport tdi pos = do
  logInfo "getModulesToImport"
  let uri = tdi._uri
  haskell <- getHaskell uri
  mHieFile <- runMaybeT $ getHieFileFromTdi tdi
  let astPoint = lspPositionToASTPoint pos
  logInfo $ T.pack $ "astPoint: " ++ show astPoint
  case haskell of
    Nothing -> do
      logInfo "didn't get haskell"
      pure []
    Just haskell -> do
      logInfo "got haskell"
      let dynNode = AST.getDynNode haskell
      logInfo $ T.pack $ "dynNode: " ++ show dynNode
      let maybeQualified = AST.getDeepestContaining @Haskell.Qualified astPoint (AST.getDynNode haskell)
      case maybeQualified of
        Just qualified -> do
          let node = AST.getDynNode qualified
          logInfo $ T.pack $ "qualified: " ++ show node
          pure []
        _ -> do
          logInfo $ T.pack $ "no qualified: "
          pure []

-- case mHieFile of
--   Nothing -> pure []
--   Just hieFile -> do
--     let hiedbPosition = lspPositionToHieDbCoords pos
--         names = namesAtPoint hieFile hiedbPosition
--         occNamesAndModNamesAtPoint =
--           (\name -> (GHC.occName name, fmap GHC.moduleName . GHC.nameModule_maybe $ name))
--             <$> names
--         occNames = map fst occNamesAndModNamesAtPoint
--     logInfo $ T.pack $ "occNames: " ++ show (showGhc names)
--     res <- traverse (\occ -> runExceptT $ runHieDbExceptT (\db -> findModulesForDef db occ)) occNames
--     let res' = sequenceA res
--     case res' of
--       Left e -> do
--         logError $ T.pack $ "e: " ++ show e
--         pure []
--       Right res'' -> pure $ concat res''
|]

{-# LANGUAGE BlockArguments #-}
{-# LANGUAGE QuasiQuotes #-}

module Main (main) where

import AST qualified
import AST.Haskell qualified
import AST.Haskell qualified as Haskell
import AST.Sum
import Data.LineCol (LineCol (..))
import Data.LineColRange qualified as LineColRange
import Data.Pos (Pos (..))
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
            [expect|"haskell@(0 - 38)"|]
            emojiCode
        ),
        ( test
            "getDeepestDynNodeContainingLineCol"
            [expect|Just
    ( "string@(35 - 38)" [] )|]
            do
              let hs = Haskell.parse emojiCode
              let node = AST.getDynNode hs
              let point = LineCol (Pos 4) (Pos 5)
              let res = AST.getDeepestDynNodeContainingLineCol (LineColRange.point point) node
              pure $ pShow (AST.FullDynNode <$> res)
        ),
        ( test
            "getDeepestContainingLineCol"
            [expect|Just
    ( "literal@(35 - 38)"
        [ "string@(35 - 38)" [] ]
    )|]
            do
              let hs = Haskell.parse emojiCode
              let node = AST.getDynNode hs
              let point = LineCol (Pos 4) (Pos 5)
              let res = AST.getDeepestContainingLineCol @AST.Haskell.Literal (LineColRange.point point) node
              pure $ pShow (AST.FullDynNode <$> (AST.getDynNode <$> res))
        ),
        ( test
            "getDeepestContainingLineCol"
            [expect|Just
    ( "variable@(666 - 683)" [] )|]
            do
              let hs = Haskell.parse weirdSource
              let node = AST.getDynNode hs
              let point = LineCol (Pos 24) (Pos 0)
              let res = AST.getDeepestContainingLineCol @AutoImportTypes (LineColRange.point point) node
              pure $ pShow (AST.FullDynNode <$> (AST.getDynNode <$> res))
              -- pure $ pShow (AST.FullDynNode (AST.getDynNode hs))
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
|]

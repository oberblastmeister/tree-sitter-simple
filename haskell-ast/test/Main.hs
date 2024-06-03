{-# LANGUAGE BlockArguments #-}
{-# LANGUAGE QuasiQuotes #-}

module Main (main) where

import AST.Haskell qualified as Haskell
import AST.Node
import Data.Text (Text)
import Data.Text.Lazy qualified as TL
import NeatInterpolation
import Test.Tasty
import Test.Tasty.Expect
import Test.Tasty.HUnit
import Text.Pretty.Simple (pPrintNoColor, pShowNoColor)

testParseDyn :: String -> Expect -> Text -> TestTree
testParseDyn name ex source = test name ex $ do
  pure $ TL.toStrict $ pShowNoColor $ fmap getDynNode $ Haskell.parse $ source

testParse :: String -> Expect -> Text -> TestTree
testParse name ex source = test name ex $ do
  pure $ TL.toStrict $ pShowNoColor $ Haskell.parse $ source

main :: IO ()
main = do
  let ex = [expect||]
  print ex
  -- getCurrentWorkingDirectory >>= print
  defaultMainWithIngredients (expectIngredient : defaultIngredients) $
    testGroup
      "main"
      [ testCase "First" $
          (1 :: Int) @?= 1,
        testParseDyn
          "Parse Unicode"
          [expect|Just
    ( "haskell@[0:0 - 4:7]"
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
        ]
    )|]
          [trimming|
            module Main where

            s = "💀"

            t = "x"
          |],
        test "" [expect|sadfpoiuasdpofiuadspfouiadsfpiouasdfpoiaudsfaposdifu|] do
          pure "sadfpoiuasdpofiuadspfouiadsfpiouasdfpoiaudsfaposdifu",
        test "" [expect|sadfpoiuasdpofiuadspfouiadsfpiouasdfpoiaudsfaposdifu|] do
          pure "sadfpoiuasdpofiuadspfouiadsfpiouasdfpoiaudsfaposdifu"
      ]

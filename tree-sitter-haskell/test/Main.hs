module Main where

import Test.Tasty
import Test.Tasty.HUnit
import qualified TreeSitter.Api
import TreeSitter.Haskell

main :: IO ()
main =
  defaultMain $
    testGroup
      "main"
      [ testCase "First" $
          (1 :: Int) @?= 1,
        testCase "Parse haskell" $ do
          contents <- readFile "test_data/First.hs"
          let tree = TreeSitter.Api.parse tree_sitter_haskell contents
          show tree @?= ""
      ]

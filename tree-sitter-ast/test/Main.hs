module Main (main) where

import Test.Tasty
import Test.Tasty.HUnit
import qualified SumSpec

main :: IO ()
main =
  defaultMain $
    testGroup
      "main"
      [ testCase "First" $
          (1 :: Int) @?= 1,
        SumSpec.tests
      ]

{-# LANGUAGE QuasiQuotes #-}

module Main (main) where

import NeatInterpolation
import SumSpec qualified
import Test.Tasty
import Test.Tasty.HUnit

main :: IO ()
main =
  defaultMain $
    testGroup
      "main"
      [ testCase "First" $
          (1 :: Int) @?= 1,
        SumSpec.tests
      ]

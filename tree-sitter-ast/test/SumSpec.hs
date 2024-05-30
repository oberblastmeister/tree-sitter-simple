module SumSpec where

import Data.Sum
import Test.Tasty
import Test.Tasty.HUnit

type First = Int :+ Bool :+ Char :+ Nil

type Second = String :+ [Char] :+ Nil

type Nested = First :+ Second :+ Nil

tests =
  testGroup
    "SumSpec"
    [ testCase "First" $
        (1 :: Int) @?= 1,
      testCase "Project" $ do
        let x = X 1 :: First
        prj @Int x @?= Just 1
        let y = Rest (Rest (X 'x')) :: First
        prj @Char y @?= Just 'x'
        let z = Rest (X True) :: First
        prj @Bool z @?= Just True
        case z of
          Inj True -> pure ()
          _ -> error "wrong"
        prj @Int z @?= Nothing
        pure (),
      testCase "Nested Project" $ do
        let x = X (X 1) :: Nested
        prj @First x @?= Just (X 1)
        prj @Second x @?= Nothing
        pure (),
      testCase "Deep Project" $ do
        let x = Rest (X (X "hello")) :: Nested
        prjDeep @String x @?= Just "hello"
        prjDeep @Int x @?= Nothing
        pure (),
      testCase "Eq Stuff" $ do
        let x = Rest (X (X "hello")) :: Nested
        (x == x) @?= True,
      testCase "inj" $ do
        let x = (Inj @First (Inj @Int 1) :: Nested)
        case x of
          Inj @First (Inj @Int 1) -> pure ()
          _ -> error "wrong"
        case x of
          Inj @Second _ -> error "wrong"
          _ -> pure ()
        pure ()
    ]

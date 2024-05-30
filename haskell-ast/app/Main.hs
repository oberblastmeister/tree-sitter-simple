{-# LANGUAGE QuasiQuotes #-}

module Main where

import AST.Cast qualified as Cast
import AST.Haskell qualified
import AST.Node qualified as AST
import AST.Runtime qualified as Runtime
import Control.DeepSeq qualified as DeepSeq
import Data.Text.IO qualified as T.IO
import NeatInterpolation
import System.Environment (getArgs)
import Text.Pretty.Simple
import TreeSitter.Api
import TreeSitter.Haskell

main :: IO ()
main = do
  [file] <- getArgs
  !tree <- parse tree_sitter_haskell <$> T.IO.readFile file
  let childDesc = Runtime.getChildDescription tree
  -- pPrintOpt NoCheckColorTty (defaultOutputOptionsDarkBg {outputOptionsIndentAmount = 1}) childDesc
  let !(typedTree :: Maybe AST.Haskell.Haskell) = Cast.cast tree
  -- pPrintOpt NoCheckColorTty (defaultOutputOptionsDarkBg {outputOptionsIndentAmount = 1}) tree
  pPrintOpt NoCheckColorTty (defaultOutputOptionsDarkBg {outputOptionsIndentAmount = 1}) typedTree
  let !_ = DeepSeq.rnf typedTree
  pure ()
  
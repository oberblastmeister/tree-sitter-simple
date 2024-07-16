{-# LANGUAGE QuasiQuotes #-}

module Main where

import AST qualified
import AST.Haskell qualified
import AST.Runtime qualified as Runtime
import Data.Text.IO qualified as T.IO
import System.Environment (getArgs)
import Text.Pretty.Simple
import TreeSitter.Api
import TreeSitter.Haskell

main :: IO ()
main = do
  [file] <- getArgs
  !tree <- parse tree_sitter_haskell <$> T.IO.readFile file
  let childDesc = Runtime.getChildDescription tree
  let !(typedTree :: Maybe AST.Haskell.Haskell) = AST.cast tree
  pPrintOpt NoCheckColorTty (defaultOutputOptionsDarkBg {outputOptionsIndentAmount = 1}) tree
  pPrintOpt NoCheckColorTty (defaultOutputOptionsDarkBg {outputOptionsIndentAmount = 1}) typedTree
  pure ()

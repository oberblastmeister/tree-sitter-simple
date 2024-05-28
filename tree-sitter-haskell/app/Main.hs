{-# LANGUAGE BangPatterns #-}
{-# LANGUAGE ImportQualifiedPost #-}

import Data.Text.IO qualified as T.IO
import System.Environment (getArgs)
import Text.Pretty.Simple
import TreeSitter.Api
import TreeSitter.Haskell

main :: IO ()
main = do
  [file] <- getArgs
  !tree <- parse tree_sitter_haskell <$> T.IO.readFile file
  pPrintOpt NoCheckColorTty (defaultOutputOptionsDarkBg {outputOptionsIndentAmount = 1}) tree
  pure ()

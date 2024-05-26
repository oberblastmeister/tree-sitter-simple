{-# LANGUAGE BangPatterns #-}
{-# LANGUAGE ImportQualifiedPost #-}

import System.Environment (getArgs)
import Text.Pretty.Simple
import TreeSitter.Api
import TreeSitter.Haskell
import Data.Text.IO.Utf8 qualified as T.IO.Utf8

main :: IO ()
main = do
  [file] <- getArgs
  !tree <- parse tree_sitter_haskell <$> T.IO.Utf8.readFile file
  -- pPrintOpt NoCheckColorTty (defaultOutputOptionsDarkBg {outputOptionsIndentAmount = 1}) tree
  pure ()

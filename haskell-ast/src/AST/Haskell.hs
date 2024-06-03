module AST.Haskell (module X, parse) where

import AST.Cast
import AST.Haskell.Generated as X
import Data.Text (Text)
import TreeSitter.Api qualified as TS
import TreeSitter.Haskell qualified as TS

parse :: Text -> Maybe Haskell
parse source = cast @Haskell (TS.parse TS.tree_sitter_haskell source)

module AST.Haskell (module X, parse) where

import AST.Cast
import AST.Haskell.Generated as X
import AST.Node (WrappedDynNode (..), defaultNode)
import Data.Maybe (fromMaybe)
import Data.Text (Text)
import TreeSitter.Api qualified as TS
import TreeSitter.Haskell qualified as TS

parse :: TS.ConvertPos -> Text -> Haskell
parse convert source =
  fromMaybe defaultHaskellNode $
    cast @Haskell (TS.parse convert TS.tree_sitter_haskell source)

defaultHaskellNode :: Haskell
defaultHaskellNode =
  Haskell
    { children = Left "default",
      declarations = Left "default",
      imports = Left "default",
      dynNode = WrappedDynNode defaultNode
    }

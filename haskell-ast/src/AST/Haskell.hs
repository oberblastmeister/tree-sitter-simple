module AST.Haskell
  ( module X,
    parse,
    parseWith,
  )
where

import AST.Cast
import AST.Haskell.Generated as X
import AST.Node (defaultNode)
import Data.Maybe (fromMaybe)
import Data.Text (Text)
import TreeSitter.Api qualified as TS
import TreeSitter.Haskell qualified as TS

parse :: Text -> Haskell
parse = parseWith TS.idConvertPos

parseWith :: TS.ConvertPos -> Text -> Haskell
parseWith convert source =
  fromMaybe defaultHaskellNode $
    cast @Haskell (TS.parseWith convert TS.tree_sitter_haskell source)

defaultHaskellNode :: Haskell
defaultHaskellNode =
  Haskell
    { children = Left "default",
      declarations = Left "default",
      imports = Left "default",
      dynNode = defaultNode
    }

module AST.Traversal
  ( getDeepestContaining,
    getDeepestSatisfying,
  )
where

import AST.Cast (Cast (..))
import AST.Node
import Control.Applicative ((<|>))
import Control.Monad (guard)
import Data.Foldable (asum)
import TreeSitter.Api qualified as TS

getDeepestContaining :: (Cast n) => TS.Point -> DynNode -> Maybe n
getDeepestContaining point node =
  getDeepestSatisfying
    ( \n -> do
        guard (TS.startPoint (TS.nodeRange n) <= point && point <= TS.endPoint (TS.nodeRange n))
        cast n
    )
    node

getDeepestSatisfying :: (DynNode -> Maybe b) -> DynNode -> Maybe b
getDeepestSatisfying f n = go n
  where
    go n = asum (f <$> (TS.nodeChildren n)) <|> f n

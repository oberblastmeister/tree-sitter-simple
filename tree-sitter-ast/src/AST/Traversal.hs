module AST.Traversal
  ( getDeepestContaining,
    getDeepestSatisfying,
    getDeepestDynNodeContaining,
  )
where

import AST.Cast (Cast (..))
import AST.Node
import Control.Applicative ((<|>))
import Control.Monad (guard)
import Data.Foldable (asum)
import TreeSitter.Api qualified as TS

getDeepestDynNodeContaining :: TS.Point -> DynNode -> Maybe DynNode
getDeepestDynNodeContaining point node =
  getDeepestSatisfying
    ( \n -> do
        guard (TS.startPoint (TS.nodeRange n) <= point && point <= TS.endPoint (TS.nodeRange n))
        pure n
    )
    node

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
    go n = asum (go <$> (TS.nodeChildren n)) <|> f n

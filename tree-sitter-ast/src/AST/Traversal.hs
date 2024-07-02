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
import Data.Range qualified as Range
import Data.Range (Range(..))

getDeepestDynNodeContaining :: Range -> DynNode -> Maybe DynNode
getDeepestDynNodeContaining range node =
  getDeepestSatisfying
    ( \n -> do
        guard (n.nodeRange `Range.containsRange` range)
        pure n
    )
    node

getDeepestContaining :: (Cast n) => Range -> DynNode -> Maybe n
getDeepestContaining range node =
  getDeepestSatisfying
    ( \n -> do
        guard (n.nodeRange `Range.containsRange` range)
        cast n
    )
    node

getDeepestSatisfying :: (DynNode -> Maybe b) -> DynNode -> Maybe b
getDeepestSatisfying f n = go n
  where
    go n = asum (go <$> (TS.nodeChildren n)) <|> f n

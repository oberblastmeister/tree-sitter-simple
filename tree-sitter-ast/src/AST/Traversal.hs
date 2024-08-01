module AST.Traversal
  ( getDeepestContaining,
    getDeepestSatisfying,
    getDeepestDynNodeContaining,
    getDeepestDynNodeContainingLineCol,
    getDeepestContainingLineCol,
  )
where

import AST.Cast (Cast (..))
import AST.Node
import Control.Applicative ((<|>))
import Data.Foldable (asum)
import Data.LineColRange (LineColRange (..))
import Data.LineColRange qualified as LineColRange
import Data.List qualified as List
import Data.Range (Range (..))
import Data.Range qualified as Range
import TreeSitter.Api qualified as TS

getDeepestDynNodeContainingLineCol :: LineColRange -> DynNode -> Maybe DynNode
getDeepestDynNodeContainingLineCol = getDeepestContainingLineColSatisfying Just

getDeepestDynNodeContaining :: Range -> DynNode -> Maybe DynNode
getDeepestDynNodeContaining = getDeepestContainingSatisfying Just

getDeepestContainingLineCol :: (Cast n) => LineColRange -> DynNode -> Maybe n
getDeepestContainingLineCol = getDeepestContainingLineColSatisfying cast

getDeepestContainingLineColSatisfying :: (DynNode -> Maybe b) -> LineColRange -> DynNode -> Maybe b
getDeepestContainingLineColSatisfying f range node = go node
  where
    go n =
      ( do
          n' <- List.find (\n -> n.nodeLineColRange `LineColRange.containsRange` range) n.nodeChildren
          go n'
      )
        <|> f n

getDeepestContainingSatisfying :: (DynNode -> Maybe b) -> Range -> DynNode -> Maybe b
getDeepestContainingSatisfying f range node = go node
  where
    go n =
      ( do
          n' <- List.find (\n -> n.nodeRange `Range.containsRange` range) n.nodeChildren
          go n'
      )
        <|> f n

getDeepestContaining :: (Cast n) => Range -> DynNode -> Maybe n
getDeepestContaining = getDeepestContainingSatisfying cast

getDeepestSatisfying :: (DynNode -> Maybe b) -> DynNode -> Maybe b
getDeepestSatisfying f n = go n
  where
    go n = asum (go <$> (TS.nodeChildren n)) <|> f n

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
import Control.Monad (guard)
import Data.Foldable (asum)
import Data.LineCol (LineCol)
import Data.LineColRange (LineColRange(..))
import Data.Range (Range (..))
import Data.Range qualified as Range
import TreeSitter.Api qualified as TS
import qualified Data.LineColRange as LineColRange

getDeepestDynNodeContainingLineCol :: LineCol -> DynNode -> Maybe DynNode
getDeepestDynNodeContainingLineCol lineCol node =
  ( \n -> do
      guard (n.nodeLineColRange.start <= lineCol && lineCol <= n.nodeLineColRange.end)
      pure n
  )
    node

getDeepestDynNodeContaining :: Range -> DynNode -> Maybe DynNode
getDeepestDynNodeContaining range node =
  getDeepestSatisfying
    ( \n -> do
        guard (n.nodeRange `Range.containsRange` range)
        pure n
    )
    node
    

getDeepestContainingLineCol :: (Cast n) => LineColRange -> DynNode -> Maybe n
getDeepestContainingLineCol lineColRange node =
  getDeepestSatisfying
    ( \n -> do
        guard (n.nodeLineColRange `LineColRange.containsRange` lineColRange)
        cast n
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

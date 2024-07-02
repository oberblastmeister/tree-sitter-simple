{-# LANGUAGE DeriveAnyClass #-}

module AST.Node
  ( WrappedDynNode (..),
    HasDynNode (..),
    DynNode,
    defaultNode,
    nodeToText,
    nodeToRange,
  )
where

import AST.Cast (DynNode)
import AST.Sum
import Data.LineCol (LineCol (..))
import Data.LineColRange qualified as LineColRange
import Data.Pos (Pos (..))
import Data.Range qualified as Range
import Data.Text (Text)
import Data.Text qualified as T
import TreeSitter.Api (Node (..))
import TreeSitter.Api qualified as TS

-- so we don't show these and compare for equality
newtype WrappedDynNode = WrappedDynNode {unDynNode :: TS.Node}

instance Show WrappedDynNode where
  show (WrappedDynNode _node) = "DynNode"

instance Eq WrappedDynNode where
  (==) _ _ = True

instance Ord WrappedDynNode where
  compare _ _ = EQ

class HasDynNode a where
  getDynNode :: a -> DynNode

instance HasDynNode DynNode where
  getDynNode = id

defaultNode :: DynNode
defaultNode =
  TS.Node
    { nodeType = T.pack "",
      nodeSymbol =
        TS.Symbol
          { symbolType = TS.Regular,
            symbolName = T.pack "",
            symbolId = 0
          },
      nodeRange = Range.empty (Pos 0),
      nodeLineColRange = LineColRange.empty (LineCol (Pos 0) (Pos 0)),
      nodeFieldName = Nothing,
      nodeIsNamed = False,
      nodeIsExtra = False,
      nodeText = T.pack "",
      nodeChildren = [],
      nodeParent = Nothing
    }

instance HasDynNode Nil where
  getDynNode = \case {}

instance (HasDynNode x, HasDynNode xs) => HasDynNode (x :+ xs) where
  getDynNode (X x) = getDynNode x
  getDynNode (Rest xs) = getDynNode xs

nodeToText :: (HasDynNode n) => n -> Text
nodeToText = nodeText . getDynNode

nodeToRange :: (HasDynNode n) => n -> TS.Range
nodeToRange = nodeRange . getDynNode

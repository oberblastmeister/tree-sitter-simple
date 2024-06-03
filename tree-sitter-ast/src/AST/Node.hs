{-# LANGUAGE DeriveAnyClass #-}

module AST.Node
  ( WrappedDynNode (..),
    HasDynNode (..),
    DynNode,
    defaultNode,
  )
where

import AST.Cast (DynNode)
import Control.DeepSeq (NFData (rnf))
import Data.Sum
import Data.Text qualified as T
import TreeSitter.Api qualified as TS

-- so we don't show these and compare for equality
newtype WrappedDynNode = WrappedDynNode {unDynNode :: TS.Node}

instance Show WrappedDynNode where
  show (WrappedDynNode _node) = "DynNode"

instance Eq WrappedDynNode where
  (==) _ _ = True

instance Ord WrappedDynNode where
  compare _ _ = EQ

instance NFData WrappedDynNode where
  rnf (WrappedDynNode node) = rnf node

class HasDynNode a where
  getDynNode :: a -> DynNode

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
      nodeRange =
        TS.Range
          { startByte = 0,
            startPoint = TS.Point {row = 0, col = 0},
            endByte = 0,
            endPoint = TS.Point {row = 0, col = 0}
          },
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

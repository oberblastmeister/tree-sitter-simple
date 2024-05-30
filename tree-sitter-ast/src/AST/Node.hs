{-# LANGUAGE DeriveAnyClass #-}

module AST.Node (WrappedDynNode (..)) where

import AST.Cast (Cast (..), DynNode)
import Control.DeepSeq (NFData (rnf))
import Data.Text (Text)
import GHC.Generics (Generic)
import TreeSitter.Api qualified as TS

newtype WrappedDynNode = WrappedDynNode {unDynNode :: TS.Node}

instance Show WrappedDynNode where
  show (WrappedDynNode _node) = ""

instance Eq WrappedDynNode where
  (==) (WrappedDynNode node1) (WrappedDynNode node2) = node1 == node2

instance Ord WrappedDynNode where
  compare (WrappedDynNode node1) (WrappedDynNode node2) = compare node1 node2

instance NFData WrappedDynNode where
  rnf (WrappedDynNode node) = rnf node

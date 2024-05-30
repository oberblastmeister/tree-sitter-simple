{-# LANGUAGE DeriveAnyClass #-}

module AST.Node (Node (..), DynNode) where

import TreeSitter.Api qualified as Api
import GHC.Generics (Generic)
import Control.DeepSeq (NFData)

type DynNode = Api.Node

data Node n
  = ErrorNode {dynNode :: DynNode}
  | MissingNode {dynNode :: DynNode}
  | Node {dynNode :: DynNode, node :: n}
  deriving (Show, Eq, Ord, Generic, NFData)

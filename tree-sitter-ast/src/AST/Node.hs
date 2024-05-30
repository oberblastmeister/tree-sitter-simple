module AST.Node (Node (..), DynNode) where

import TreeSitter.Api qualified as Api

type DynNode = Api.Node

data Node n
  = ErrorNode {dynNode :: DynNode}
  | MissingNode {dynNode :: DynNode}
  | Node {dynNode :: DynNode, node :: n}
  deriving (Show, Eq, Ord)

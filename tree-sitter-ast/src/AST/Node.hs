{-# LANGUAGE DeriveAnyClass #-}

module AST.Node (Node (..), DynNode, castNode) where

import AST.Cast (Cast (..), DynNode)
import Control.DeepSeq (NFData)
import Data.Text (Text)
import GHC.Generics (Generic)
import TreeSitter.Api qualified as TS

data Node n
  = ErrorNode {dynNode :: DynNode}
  | MissingNode {dynNode :: DynNode}
  | FailedCastNode {dynNode :: DynNode, err :: Text}
  | Node {dynNode :: DynNode, node :: n}
  deriving (Eq, Ord, Generic, NFData)

instance (Show n) => Show (Node n) where
  show (ErrorNode _) = "ErrorNode"
  show (MissingNode _) = "MissingNode"
  show (Node _ n) = show n
  show (FailedCastNode _ err) = "FailedCastNode " <> show err

castNode :: (Cast n) => DynNode -> Node n
castNode dynNode =
  case nodeTy of
    "ERROR" -> ErrorNode dynNode
    "MISSING" -> ErrorNode dynNode
    _ -> case cast dynNode of
      Nothing -> FailedCastNode dynNode nodeTy
      Just n -> Node dynNode n
  where
    nodeTy = TS.nodeType dynNode

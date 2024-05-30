module AST.Cast (Cast (..)) where

import AST.Node
import AST.Token (Token (..))
import Control.Applicative ((<|>))
import Data.Sum
import Data.Text qualified as T
import GHC.TypeLits (KnownSymbol, symbolVal)
import TreeSitter.Api qualified as TS

class Cast a where
  cast :: DynNode -> Maybe a

instance (Cast x) => Cast (x :+ Nil) where
  cast node = X <$> cast node

instance {-# OVERLAPPABLE #-} (Cast x, Cast xs) => Cast (x :+ xs) where
  cast node = (X <$> cast node) <|> (Rest <$> cast node)

instance (Cast n) => Cast (Node n) where
  cast dynNode =
    case nodeTy of
      "ERROR" -> Just $ ErrorNode dynNode
      "MISSING" -> Just $ ErrorNode dynNode
      _ -> Node dynNode <$> cast dynNode
    where
      nodeTy = TS.nodeType dynNode

instance (KnownSymbol s) => Cast (Token s) where
  cast dynNode =
    if sym == nodeTy
      then
        Just Token
      else
        Nothing
    where
      sym = T.pack (symbolVal (Token @s))
      nodeTy = TS.nodeType dynNode

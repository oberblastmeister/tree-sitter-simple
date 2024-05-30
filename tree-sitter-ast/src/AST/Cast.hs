module AST.Cast (DynNode, Cast (..)) where

import AST.Token (Token (..))
import Control.Applicative ((<|>))
import Control.Monad qualified as Monad
import Data.Sum
import Data.Text qualified as T
import GHC.TypeLits (KnownSymbol, symbolVal)
import TreeSitter.Api qualified as TS

type DynNode = TS.Node

class Cast a where
  cast :: DynNode -> Maybe a

instance (Cast x) => Cast (x :+ Nil) where
  cast node = X <$> cast node

instance {-# OVERLAPPABLE #-} (Cast x, Cast xs) => Cast (x :+ xs) where
  cast node = (X <$> cast node) <|> (Rest <$> cast node)

instance (KnownSymbol s) => Cast (Token s) where
  cast dynNode = do
    Monad.guard $ sym == nodeTy
    pure Token
    where
      sym = T.pack (symbolVal (Token @s))
      nodeTy = TS.nodeType dynNode

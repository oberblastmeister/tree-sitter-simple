module AST.Cast
  ( DynNode,
    Cast (..),
    TS.Node (..),
  )
where

import AST.Err
import AST.Sum
import AST.Token (Token (..))
import Control.Applicative ((<|>))
import Control.Monad qualified as Monad
import Data.Text qualified as T
import GHC.TypeLits (KnownSymbol, symbolVal)
import TreeSitter.Api qualified as TS

type DynNode = TS.Node

-- the cast type class
class Cast a where
  -- when you want to use alternatives
  cast :: DynNode -> Maybe a

  -- when you want to commit
  castErr :: DynNode -> Err a
  castErr = maybeToErr "Failed to cast node" . cast

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

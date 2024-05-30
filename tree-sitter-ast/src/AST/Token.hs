module AST.Token (Token (..)) where

import GHC.Generics (Generic)
import GHC.TypeLits (Symbol)

data Token (symName :: Symbol) = Token
  deriving (Eq, Generic, Ord, Show)

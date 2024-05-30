module AST.Token (Token (..)) where

import Control.DeepSeq (NFData (..))
import GHC.Generics (Generic)
import GHC.TypeLits (Symbol)

data Token (symName :: Symbol) = Token
  deriving (Show, Eq, Ord, Generic)

instance NFData (Token s) where
  rnf !t = ()

module AST.Token
  ( Token (..),
    tokenText,
  )
where

import Control.DeepSeq (NFData (..))
import Data.Proxy (Proxy (..))
import Data.Text (Text)
import Data.Text qualified as T
import GHC.Generics (Generic)
import GHC.TypeLits (Symbol)
import GHC.TypeLits qualified as TypeLits

data Token (symName :: Symbol) = Token
  deriving (Show, Eq, Ord, Generic)

tokenText :: forall s. (TypeLits.KnownSymbol s) => Token s -> Text
tokenText _ = T.pack (TypeLits.symbolVal (Proxy @s))

instance NFData (Token s) where
  rnf !_ = ()

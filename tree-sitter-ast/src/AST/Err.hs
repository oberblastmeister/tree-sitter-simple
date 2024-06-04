module AST.Err
  ( Err,
    maybeToErr,
    collapseErr,
  )
where

import Control.Monad qualified as Monad
import Data.Text (Text)

type Err = Either Text

maybeToErr :: Text -> Maybe a -> Err a
maybeToErr e = maybe (Left e) Right

collapseErr :: (Traversable f) => Err (f (Err a)) -> Err (f a)
collapseErr = Monad.join . fmap sequenceA

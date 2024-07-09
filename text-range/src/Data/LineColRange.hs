module Data.LineColRange
  ( LineColRange (.., LineColRange),
    empty,
    mkLineColRange,
    containsRange,
  )
where

import Data.LineCol (LineCol)
import GHC.Stack (HasCallStack)
import GHC.Generics (Generic)
import Data.Hashable (Hashable)

data LineColRange = UnsafeLineColRange
  { start :: !LineCol,
    end :: !LineCol
  }
  deriving (Show, Eq, Ord, Generic)

instance Hashable LineColRange

pattern LineColRange :: (HasCallStack) => LineCol -> LineCol -> LineColRange
pattern LineColRange s e <- UnsafeLineColRange s e
  where
    LineColRange = mkLineColRange

{-# COMPLETE LineColRange #-}

mkLineColRange :: (HasCallStack) => LineCol -> LineCol -> LineColRange
mkLineColRange s e
  | s <= e = UnsafeLineColRange s e
  | otherwise = error $ "start must be <= end, got " <> show s <> " and " <> show e

empty :: LineCol -> LineColRange
empty p = LineColRange p p

containsRange :: LineColRange -> LineColRange -> Bool
containsRange (LineColRange s1 e1) (LineColRange s2 e2) = s1 <= s2 && e2 <= e1

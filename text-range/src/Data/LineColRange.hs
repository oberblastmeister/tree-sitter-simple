module Data.LineColRange
  ( LineColRange (.., LineColRange),
    empty,
    mkLineColRange,
  )
where

import Data.LineCol (LineCol)
import GHC.Stack (HasCallStack)

data LineColRange = UnsafeLineColRange
  { start :: !LineCol,
    end :: !LineCol
  }
  deriving (Eq, Show)

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

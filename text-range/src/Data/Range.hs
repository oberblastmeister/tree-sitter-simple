module Data.Range
  ( Range (.., Range),
    empty,
    mkRange,
    contains,
    containsRange,
  )
where

import Data.Pos
import GHC.Stack (HasCallStack)
import GHC.Generics (Generic)
import Data.Hashable (Hashable)

data Range = UnsafeRange
  { start :: !Pos,
    end :: !Pos
  }
  deriving (Eq, Show, Ord, Generic)

instance Hashable Range

pattern Range :: (HasCallStack) => Pos -> Pos -> Range
pattern Range s e <- UnsafeRange s e
  where
    Range = mkRange

{-# COMPLETE Range #-}

empty :: Pos -> Range
empty p = UnsafeRange p p

mkRange :: (HasCallStack) => Pos -> Pos -> Range
mkRange start end = if start > end then error "start must not be greater than end" else UnsafeRange start end

contains :: Range -> Pos -> Bool
contains (Range (Pos start) (Pos end)) (Pos p) = start <= p && p < end

containsRange :: Range -> Range -> Bool
containsRange (Range (Pos start) (Pos end)) (Range (Pos start') (Pos end')) = start <= start' && end' <= end

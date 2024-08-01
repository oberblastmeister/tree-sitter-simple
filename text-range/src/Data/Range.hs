module Data.Range
  ( Range (.., Range),
    empty,
    mkRange,
    contains,
    containsRange,
    point,
  )
where

import Data.Hashable (Hashable)
import Data.Pos
import GHC.Generics (Generic)
import GHC.Stack (HasCallStack)

data Range = UnsafeRange
  { start :: !Pos,
    end :: !Pos
  }
  deriving (Eq, Ord, Generic)

instance Show Range where
  show (UnsafeRange s e) = "(" ++ show s <> " - " <> show e ++ ")"

instance Hashable Range

pattern Range :: (HasCallStack) => Pos -> Pos -> Range
pattern Range s e <- UnsafeRange s e
  where
    Range = mkRange

{-# COMPLETE Range #-}

empty :: Pos -> Range
empty p = UnsafeRange p p

point :: Pos -> Range
point p = UnsafeRange p (Pos (p.pos + 1))

mkRange :: (HasCallStack) => Pos -> Pos -> Range
mkRange start end = if start > end then error "start must not be greater than end" else UnsafeRange start end

contains :: Range -> Pos -> Bool
contains (Range (Pos start) (Pos end)) (Pos p) = start <= p && p < end

containsRange :: Range -> Range -> Bool
containsRange (Range (Pos start) (Pos end)) (Range (Pos start') (Pos end')) = start <= start' && end' <= end

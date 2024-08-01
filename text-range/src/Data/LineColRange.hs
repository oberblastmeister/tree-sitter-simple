module Data.LineColRange
  ( LineColRange (.., LineColRange),
    empty,
    mkLineColRange,
    containsRange,
    point,
  )
where

import Data.Hashable (Hashable)
import Data.LineCol (LineCol (..))
import Data.Pos (Pos (..))
import GHC.Generics (Generic)
import GHC.Stack (HasCallStack)

data LineColRange = UnsafeLineColRange
  { start :: !LineCol,
    end :: !LineCol
  }
  deriving (Eq, Ord, Generic)

instance Show LineColRange where
  show (UnsafeLineColRange s e) = "(" ++ show s <> " - " <> show e ++ ")"

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

point :: LineCol -> LineColRange
point p@(LineCol line col) = LineColRange p (LineCol line (Pos (col.pos + 1)))

containsRange :: LineColRange -> LineColRange -> Bool
containsRange (LineColRange s1 e1) (LineColRange s2 e2) = s1 <= s2 && e2 <= e1

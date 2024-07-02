{-# LANGUAGE NoFieldSelectors #-}

module Data.Pos (
  Pos (.., Pos),
  mkPos,
)
where

import GHC.Stack (HasCallStack)


-- 0 based char position
newtype Pos = UnsafePos {pos :: Int}
  deriving (Show, Eq, Ord)

pattern Pos :: (HasCallStack) => Int -> Pos
pattern Pos p <- UnsafePos p
  where
    Pos = mkPos

{-# COMPLETE Pos #-}

mkPos :: (HasCallStack) => Int -> Pos
mkPos p
  | p < 0 = error $ "pos must be >= 0, got " <> show p
  | otherwise = UnsafePos p

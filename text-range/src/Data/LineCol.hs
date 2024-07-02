module Data.LineCol
  ( LineCol (..),
  )
where

import Data.Pos

-- 0 based line and columns
-- When are LineCol valid indices?
-- Consider the string "abcd\n1234"
-- Valid indices are (LineCol 0 0) to (LineCol 0 4)
-- and (LineCol 1 0) to (LineCol 1 3)
-- If you are pointing to the end of the string, such as at the end of a LineColRange, then
-- (LineCol 1 4) is valid, but (LineCol 2 0) is not.
data LineCol = LineCol
  { line :: !Pos,
    col :: !Pos
  }
  deriving (Eq, Show, Ord)

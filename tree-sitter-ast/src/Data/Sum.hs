{-# LANGUAGE AllowAmbiguousTypes #-}
{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE UndecidableInstances #-}

module Data.Sum
  ( Nil,
    (:+) (..),
    Element (..),
    ElementDeep (..),
    pattern Inj,
    pattern PrjDeep,
  )
where

import Control.DeepSeq (NFData)
import GHC.Generics (Generic)
import GHC.TypeLits

data Nil
  deriving (Show, Eq, Ord, Generic, NFData)

data a :+ b = X a | Rest b
  deriving (Eq, Ord, Generic, NFData)

instance (Show a, Show b) => Show (a :+ b) where
  show (X a) = show a
  show (Rest b) = show b

infixr 5 :+

pattern Inj :: (Inject sub sup, Element sub sup) => sub -> sup
pattern Inj sub <- (prj -> Just sub)
  where
    Inj sub = inj sub

pattern PrjDeep :: (ElementDeep sub sup) => sub -> sup
pattern PrjDeep sub <- (prjDeep -> Just sub)

class Element sub sup where
  -- | Project one element out of a sum type.
  prj :: sup -> Maybe sub

instance Element x (x :+ xs) where
  prj (X x) = Just x
  prj _ = Nothing

instance {-# OVERLAPPABLE #-} (Element x xs) => Element x (y :+ xs) where
  prj (Rest xs) = prj xs
  prj _ = Nothing

class Inject sub sup where
  inj :: sub -> sup

instance Inject x (x :+ xs) where
  inj = X

instance {-# OVERLAPPABLE #-} (Inject x xs) => Inject x (y :+ xs) where
  inj = Rest . inj

class ElementDeep sub sup where
  -- | Project one element out of a sum type.
  prjDeep :: sup -> Maybe sub

instance (ElementDeep' side sub sup, side ~ Find sub sup) => ElementDeep sub sup where
  prjDeep = prjDeep' @side

-- | Where does the element occur in the tree?
data Side = None | Here | L | R

-- | Find where in a tree an element occurs.
type family Find sub sup :: Side where
  Find t t = 'Here
  Find t (l :+ r) = Find' 'L t l <> Find' 'R t r
  Find _ _ = 'None

-- | Helper to compute the side an element occurs on.
type family Find' (side :: Side) sub sup :: Side where
  Find' s t t = s
  Find' s t (l :+ r) = Find' s t l <> Find' s t r
  Find' _ _ _ = 'None

-- | Return the leftmost non-'None' side, or 'None'.
type family (a :: Side) <> (b :: Side) :: Side where
  'None <> b = b
  a <> _ = a

-- | Helper to project elements out of the matching portion of a tree.
class ElementDeep' (side :: Side) sub sup where
  prjDeep' :: sup -> Maybe sub

-- | Membership is reflexive.
instance ElementDeep' 'Here t t where
  prjDeep' = Just

-- | Membershp on the left.
instance
  (ElementDeep t l) =>
  ElementDeep' 'L t (l :+ r)
  where
  prjDeep' (X l) = prjDeep @t @l l
  prjDeep' _ = Nothing

-- | Membership on the right.
instance
  (ElementDeep t r) =>
  ElementDeep' 'R t (l :+ r)
  where
  prjDeep' (Rest r) = prjDeep r
  prjDeep' _ = Nothing

-- | Error cases, with custom type errors.
instance
  ( TypeError
      ( 'ShowType t ':<>: 'Text " is not in"
          ':$$: ShowSum u
      )
  ) =>
  ElementDeep' 'None t u
  where
  prjDeep' _ = Nothing

-- | Show a sum tree as a set (for use in type errors).
type family ShowSum t where
  ShowSum (l :+ r) = ShowSum' ('Text "{ ") (l :+ r) ':$$: 'Text "}"
  ShowSum t = 'Text "{ " ':<>: 'ShowType t ':<>: 'Text " }"

-- | Helper for formatting & aligning sums nicely with a prefix.
type family ShowSum' p t where
  ShowSum' p (l :+ r) = ShowSum' p l ':$$: ShowSum' ('Text ", ") r
  ShowSum' p t = p ':<>: 'ShowType t

{-# LANGUAGE AllowAmbiguousTypes #-}
{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE UndecidableInstances #-}

module AST.Sum
  ( Nil,
    (:+) (..),
    Element (..),
    ElementDeep (..),
    pattern Inj,
    pattern PrjDeep,
    Apply (..),
    Produce (..),
    Populate (..),
    Subset (..),
  )
where

import Control.Applicative ((<|>))
import Control.DeepSeq (NFData)
import Control.Monad (MonadPlus)
import Data.Kind (Constraint, Type)
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

class Apply (c :: Type -> Constraint) (xs :: Type) where
  -- should always type apply the constraint
  -- like this:
  -- apply @Show f xs
  apply :: (forall x. (c x) => x -> b) -> xs -> b

instance Apply c Nil where
  apply _ = \case {}

instance (Apply c xs, c x) => Apply c (x :+ xs) where
  apply f (X x) = f x
  apply f (Rest xs) = apply @c f xs

class Populate m xs where
  populate :: m xs

class Produce m x where
  produce :: m x

instance (Produce m x, MonadPlus m) => Populate m (x :+ Nil) where
  populate = fmap X produce

instance {-# OVERLAPPABLE #-} (Produce m x, Populate m xs, MonadPlus m) => Populate m (x :+ xs) where
  populate = fmap X produce <|> fmap Rest populate

class Subset xs ys where
  subset :: xs -> ys

instance (Inject x ys, Subset xs ys) => Subset (x :+ xs) ys where
  subset (X x) = inj @x @ys x
  subset (Rest xs) = subset @xs @ys xs

instance Subset Nil ys where
  subset = \case {}

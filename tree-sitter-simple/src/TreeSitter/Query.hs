{-# LANGUAGE BlockArguments #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE OverloadedRecordDot #-}

module TreeSitter.Query where

import Control.Applicative (liftA2)
import Data.Tree (Tree)
import qualified Data.Tree as Tree
import TreeSitter.Api (Node (..))

newtype NodeQuery a = NodeQuery {runNodeQuery :: Tree Node -> Maybe a}

newtype ChildQuery a = ChildQuery {runChildQuery :: [Tree Node] -> Maybe (a, [Tree Node])}

child :: NodeQuery a -> ChildQuery a
child (NodeQuery f) = ChildQuery \children -> case children of
  child : rest -> case f child of
    Just x -> Just (x, rest)
    Nothing -> Nothing
  [] -> Nothing

instance Functor NodeQuery where
  fmap f (NodeQuery g) = NodeQuery \tree -> f <$> g tree

-- The Applicative and Monad instance for NodeQuery make sure the **both** queries succeeed on the same tree and combine the results
instance Applicative NodeQuery where
  pure x = NodeQuery \_ -> Just x
  NodeQuery f <*> NodeQuery g = NodeQuery \tree -> f tree <*> g tree
  liftA2 f (NodeQuery g) (NodeQuery h) = NodeQuery \tree -> liftA2 f (g tree) (h tree)

instance Monad NodeQuery where
  NodeQuery f >>= g = NodeQuery \tree -> case f tree of
    Just x -> runNodeQuery (g x) tree
    Nothing -> Nothing

instance Functor ChildQuery where
  fmap f (ChildQuery g) = ChildQuery \children -> case g children of
    Just (x, rest) -> Just (f x, rest)
    Nothing -> Nothing

instance Applicative ChildQuery where
  pure x = ChildQuery \rest -> Just (x, rest)
  ChildQuery f <*> ChildQuery g = ChildQuery \children -> case f children of
    Just (h, rest) -> case g rest of
      Just (x, rest') -> Just (h x, rest')
      Nothing -> Nothing
    Nothing -> Nothing

instance Monad ChildQuery where
  ChildQuery f >>= g = ChildQuery \children -> case f children of
    Just (x, rest) -> runChildQuery (g x) rest
    Nothing -> Nothing

node :: (Node -> Maybe a) -> (a -> ChildQuery b) -> NodeQuery b
node f g = NodeQuery \(Tree.Node node children) -> case f node of
  Just x -> case runChildQuery (g x) children of
    Just (y, []) -> Just y
    _ -> Nothing
  Nothing -> Nothing

query :: Tree Node -> NodeQuery a -> Maybe a
query tree (NodeQuery f) = f tree

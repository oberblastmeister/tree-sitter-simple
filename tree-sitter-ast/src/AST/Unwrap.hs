{-# LANGUAGE FunctionalDependencies #-}

module AST.Unwrap where

import AST.Err

class Unwrap n u | n -> u where
  unwrap :: n -> Err u
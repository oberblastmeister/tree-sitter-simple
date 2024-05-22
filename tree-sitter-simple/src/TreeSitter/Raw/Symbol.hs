{-# LANGUAGE DeriveLift #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE ScopedTypeVariables #-}

module TreeSitter.Raw.Symbol
  ( TSSymbol,
  )
where

import Data.Word (Word16)

type TSSymbol = Word16

{-# LANGUAGE TemplateHaskell #-}

module TreeSitter.Raw.Language
  ( module TreeSitter.Raw.Language,
    module TreeSitter.Raw.Symbol,
  )
where

import Data.Word
import Foreign.C.String
import Foreign.Ptr
import TreeSitter.Raw.Symbol

-- | A tree-sitter language.
--
--   This type is uninhabited and used only for type safety within 'Ptr' values.
data Language

foreign import ccall unsafe "ts_language_symbol_count" ts_language_symbol_count :: Ptr Language -> IO Word32

foreign import ccall unsafe "ts_language_symbol_name" ts_language_symbol_name :: Ptr Language -> TSSymbol -> IO CString

foreign import ccall unsafe "ts_language_symbol_type" ts_language_symbol_type :: Ptr Language -> TSSymbol -> IO Int

foreign import ccall unsafe "ts_language_symbol_for_name" ts_language_symbol_for_name :: Ptr Language -> CString -> Int -> Bool -> IO TSSymbol

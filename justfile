playground:
	#!/usr/bin/env bash
	cd tree-sitter-haskell/vendor/tree-sitter-haskell/
	tree-sitter build --wasm
	tree-sitter playground

gen:
    cabal run tree-sitter-ast

parse file:
    cabal run haskell-ast -- {{file}}
    
hpack:
    hpack haskell-ast
    hpack tree-sitter-ast
    hpack tree-sitter-simple
    hpack tree-sitter-haskell
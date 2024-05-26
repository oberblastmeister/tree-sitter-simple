playground:
	#!/usr/bin/env bash
	cd tree-sitter-haskell/vendor/tree-sitter-haskell/
	tree-sitter build --wasm
	tree-sitter playground

{-# LANGUAGE BangPatterns #-}
{-# LANGUAGE BlockArguments #-}
{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TypeApplications #-}

module TreeSitter.Api
  ( parse,
    Node (..),
    defaultNode,
    Point (..),
    Range (..),
    Symbol (..),
    SymbolType (..),
  )
where

import Control.DeepSeq (NFData (..))
import Control.Monad ((<$!>))
import Data.ByteString (ByteString)
import Data.ByteString qualified as B
import Data.Text (Text)
import Data.Text qualified as T
import Data.Text.Encoding qualified as T.Encoding
import Foreign
import Foreign.C
import GHC.Generics (Generic)
import System.IO.Unsafe (unsafePerformIO)
import TreeSitter.Raw qualified as Raw

data Point = Point
  { row :: !Int,
    col :: !Int
  }
  deriving (Show, Eq, Ord, Generic)

instance NFData Point where
  rnf !p = ()

data Range = Range
  { startByte :: !Int,
    startPoint :: !Point,
    endByte :: !Int,
    endPoint :: !Point
  }
  deriving (Show, Eq, Ord, Generic)

instance NFData Range where
  rnf !r = ()

data SymbolType = Regular | Anonymous | Auxiliary
  deriving (Enum, Eq, Ord, Show, Generic)

instance NFData SymbolType where
  rnf !st = ()

data Symbol = Symbol
  { symbolType :: !SymbolType,
    symbolName :: !Text,
    symbolId :: !Int
  }
  deriving (Show, Eq, Ord, Generic)

instance NFData Symbol where
  rnf !s = ()

convertPoint :: Raw.TSPoint -> Point
convertPoint Raw.TSPoint {pointRow, pointColumn} = Point {row = fromIntegral pointRow, col = fromIntegral pointColumn}

convertSymbol :: Ptr Raw.Language -> Raw.TSSymbol -> IO Symbol
convertSymbol language sym = do
  cname <- Raw.ts_language_symbol_name language sym
  name <- cStringToText cname
  ty <- toEnum <$> Raw.ts_language_symbol_type language sym
  pure $ Symbol ty name (fromIntegral @Raw.TSSymbol @Int sym)

data Node = Node
  { nodeType :: !Text,
    nodeSymbol :: !Symbol,
    nodeRange :: !Range,
    nodeFieldName :: !(Maybe Text),
    nodeIsNamed :: !Bool,
    nodeIsExtra :: !Bool,
    nodeText :: !Text,
    nodeChildren :: [Node]
  }
  deriving (Show, Eq, Ord, Generic, NFData)

defaultNode :: Node
defaultNode =
  Node
    { nodeType = T.pack "",
      nodeSymbol = Symbol {symbolType = Regular, symbolName = T.pack "", symbolId = 0},
      nodeRange = Range {startByte = 0, startPoint = Point {row = 0, col = 0}, endByte = 0, endPoint = Point {row = 0, col = 0}},
      nodeFieldName = Nothing,
      nodeIsNamed = False,
      nodeIsExtra = False,
      nodeText = T.pack "",
      nodeChildren = []
    }

convertCBool :: CBool -> Bool
convertCBool (CBool b) = b /= 0

cStringToText :: CString -> IO Text
cStringToText cstr = T.Encoding.decodeUtf8Lenient <$!> B.packCString cstr

convertNode :: Ptr Raw.Language -> Raw.Node -> ByteString -> IO Node
convertNode
  language
  node@Raw.Node
    { nodeType,
      nodeSymbol,
      nodeEndPoint,
      nodeEndByte,
      nodeFieldName,
      nodeIsNamed,
      nodeIsExtra
    }
  source = do
    nodeType <- cStringToText nodeType
    nodeSymbol <- convertSymbol language nodeSymbol
    -- be careful, the fieldname might be null
    nodeFieldName <- if nodeFieldName == nullPtr then pure Nothing else Just <$> cStringToText nodeFieldName
    nodeStartPoint <- pure $ convertPoint $ Raw.nodeStartPoint node
    nodeStartByte <- pure $ fromIntegral @_ @Int $ Raw.nodeStartByte node
    nodeEndPoint <- pure $ convertPoint nodeEndPoint
    nodeEndByte <- pure $ fromIntegral @_ @Int nodeEndByte
    let nodeRange = Range {startByte = nodeStartByte, startPoint = nodeStartPoint, endByte = nodeEndByte, endPoint = nodeEndPoint}
    -- crucial that decodeUtf8Lenient will copy from the source ByteString into Text
    -- If the original source is very large, we won't retain the entire string in memory,
    -- we will only retain the sliced part
    let nodeText = T.Encoding.decodeUtf8Lenient $ B.take (nodeEndByte - nodeStartByte) $ B.drop nodeStartByte source
    pure
      Node
        { nodeType,
          nodeSymbol,
          nodeRange,
          nodeFieldName,
          nodeIsNamed = convertCBool nodeIsNamed,
          nodeIsExtra = convertCBool nodeIsExtra,
          nodeText,
          nodeChildren = []
        }

parse :: Ptr Raw.Language -> Text -> Node
parse language source = unsafePerformIO $ parseIO language source

parseIO :: Ptr Raw.Language -> Text -> IO Node
parseIO language source = do
  Raw.withParser language \parser -> do
    let !bs = T.Encoding.encodeUtf8 source
    Raw.withParseTree parser bs \tree -> convertTree language tree bs

convertTree :: Ptr Raw.Language -> Ptr Raw.Tree -> ByteString -> IO Node
convertTree language tree source = do
  rootNode <- treeRootNode tree
  let go node = do
        typedNode <- convertNode language node source
        children <- getChildNodes node
        children <- mapM go children
        pure $ typedNode {nodeChildren = children}
  go rootNode

treeRootNode :: Ptr Raw.Tree -> IO Raw.Node
treeRootNode tree = do
  n <- malloc
  Raw.ts_tree_root_node_p tree n
  peek n

getChildNodes :: Raw.Node -> IO [Raw.Node]
getChildNodes node = do
  let Raw.Node {nodeTSNode, nodeChildCount} = node

  tsNode <- malloc
  poke tsNode nodeTSNode

  let childCount :: Int = fromIntegral nodeChildCount

  children <- mallocArray childCount
  Raw.ts_node_copy_child_nodes tsNode children

  let go i
        | i < childCount = do
            child <- peekElemOff children i
            rest <- go (i + 1)
            pure (child : rest)
        | otherwise = pure []
  go 0

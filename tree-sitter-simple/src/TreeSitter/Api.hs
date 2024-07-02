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
    Range (..),
    Symbol (..),
    SymbolType (..),
    ConvertPos,
    FullDynNode (..),
  )
where

import Control.DeepSeq (NFData (..))
import Control.Monad ((<$!>))
import Data.ByteString (ByteString)
import Data.ByteString qualified as B
import Data.LineCol (LineCol (..))
import Data.LineColRange (LineColRange (..))
import Data.Pos (Pos (..))
import Data.Range (Range (..))
import Data.Text (Text)
import Data.Text qualified as T
import Data.Text.Encoding qualified as T.Encoding
import Foreign
import Foreign.C
import GHC.Generics (Generic)
import System.IO.Unsafe (unsafePerformIO)
import TreeSitter.Raw qualified as Raw

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

convertPoint :: Raw.TSPoint -> LineCol
convertPoint Raw.TSPoint {pointRow, pointColumn} = LineCol (Pos (fromIntegral pointRow)) (Pos (fromIntegral pointColumn))

convertSymbol :: Ptr Raw.Language -> Raw.TSSymbol -> IO Symbol
convertSymbol language sym = do
  cname <- Raw.ts_language_symbol_name language sym
  name <- cStringToText cname
  ty <- toEnum <$> Raw.ts_language_symbol_type language sym
  pure $ Symbol ty name (fromIntegral @Raw.TSSymbol @Int sym)

data Node = Node
  { nodeType :: !Text,
    nodeSymbol :: !Symbol,
    nodeRange :: Range,
    nodeLineColRange :: LineColRange,
    nodeFieldName :: !(Maybe Text),
    -- whether the node is named in the grammar or anonymous (like a token "->")
    nodeIsNamed :: !Bool,
    -- whether the node is something like a comment
    -- ERROR nodes will be considered extra
    nodeIsExtra :: !Bool,
    nodeText :: !Text,
    nodeChildren :: [Node],
    -- this field ties the knot
    -- make sure not to force this field!!!
    nodeParent :: Maybe Node
  }
  deriving (Generic)

newtype FullDynNode = FullDynNode {node :: Node}

instance Show FullDynNode where
  showsPrec d (FullDynNode Node {nodeType, nodeRange, nodeChildren}) =
    showParen (d > appPrec) $
      showString "\""
        . showString (T.unpack nodeType)
        . showString "@"
        . showsPrec (appPrec + 1) nodeRange
        . showString "\""
        . showString " "
        . showsPrec (appPrec + 1) nodeChildren
    where
      appPrec = 10

instance Show Node where
  showsPrec d Node {nodeType} = showString "Node " . showsPrec d nodeType

convertCBool :: CBool -> Bool
convertCBool (CBool b) = b /= 0

cStringToText :: CString -> IO Text
cStringToText cstr = T.Encoding.decodeUtf8Lenient <$!> B.packCString cstr

convertNode :: ConvertPos -> Ptr Raw.Language -> Raw.Node -> ByteString -> IO Node
convertNode
  (convertPos, convertLineCol)
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
    let nodeRange = Range (convertPos (Pos nodeStartByte)) (convertPos (Pos nodeEndByte))
    let nodeLineColRange = LineColRange (convertLineCol nodeStartPoint) (convertLineCol nodeEndPoint)
    -- crucial that decodeUtf8Lenient will copy from the source ByteString into Text
    -- If the original source is very large, we won't retain the entire string in memory,
    -- we will only retain the sliced part
    let nodeText = T.Encoding.decodeUtf8Lenient $ B.take (nodeEndByte - nodeStartByte) $ B.drop nodeStartByte source
    pure
      Node
        { nodeType,
          nodeSymbol,
          nodeRange,
          nodeLineColRange,
          nodeFieldName,
          nodeIsNamed = convertCBool nodeIsNamed,
          nodeIsExtra = convertCBool nodeIsExtra,
          nodeText,
          nodeChildren = [],
          nodeParent = Nothing
        }

parse :: ConvertPos -> Ptr Raw.Language -> Text -> Node
parse convert language source = unsafePerformIO $ parseIO convert language source

parseIO :: ConvertPos -> Ptr Raw.Language -> Text -> IO Node
parseIO convert language source = do
  Raw.withParser language \parser -> do
    let !bs = T.Encoding.encodeUtf8 source
    Raw.withParseTree parser bs \tree -> convertTree convert language tree bs

type ConvertPos = (Pos -> Pos, LineCol -> LineCol)

convertTree :: ConvertPos -> Ptr Raw.Language -> Ptr Raw.Tree -> ByteString -> IO Node
convertTree convertPos language tree source = do
  rootNode <- treeRootNode tree
  let go node = do
        parent <- convertNode convertPos language node source
        children <- getChildNodes node
        children <- mapM go children
        pure $
          parent
            { nodeChildren =
                -- tie the knot here
                fmap
                  ( \child ->
                      child {nodeParent = Just parent}
                  )
                  children
            }
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

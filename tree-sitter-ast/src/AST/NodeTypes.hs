{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-name-shadowing #-}
-- Turn off partial field warnings for Datatype.
{-# OPTIONS_GHC -Wno-partial-fields #-}

module AST.NodeTypes
  ( NodeTypes,
    Datatype (..),
    Field (..),
    Children (..),
    Required (..),
    Type (..),
    Named (..),
    Multiple (..),
    isProductType,
  )
where

import Data.Aeson as Aeson
import Data.Aeson.Types
import Data.Char
import Data.List.NonEmpty (NonEmpty (..))
import Data.Map qualified as M
import Data.Maybe (fromMaybe)
import Data.Text (Text)
import GHC.Generics hiding (Constructor, Datatype)

type NodeTypes = [Datatype]

-- Types to deserialize into:
data Datatype
  = SumType
      { datatypeName :: Text,
        datatypeNameStatus :: Named,
        datatypeSubtypes :: NonEmpty Type
      }
  | ProductType
      { datatypeName :: Text,
        datatypeNameStatus :: Named,
        datatypeChildren :: Maybe Children,
        datatypeFields :: [(Text, Field)]
      }
  | LeafType
      { datatypeName :: Text,
        datatypeNameStatus :: Named
      }
  deriving (Eq, Ord, Show, Generic, ToJSON)

isProductType :: Datatype -> Bool
isProductType ProductType {} = True
isProductType _ = False

instance FromJSON Datatype where
  parseJSON = withObject "Datatype" $ \v -> do
    type' <- v .: "type"
    named <- v .: "named"
    subtypes <- v .:? "subtypes"
    case subtypes of
      Nothing -> do
        fields <- fmap (fromMaybe M.empty) (v .:? "fields")
        children <- v .:? "children"
        if null fields && null children
          then
            pure (LeafType type' named)
          else
            ProductType type' named children <$> parseKVPairs (M.toList fields)
      Just subtypes -> pure (SumType type' named subtypes)

-- | Transforms list of key-value pairs to a Parser
parseKVPairs :: [(Text, Value)] -> Parser [(Text, Field)]
parseKVPairs = traverse go
  where
    go :: (Text, Value) -> Parser (Text, Field)
    go (t, v) = do
      v' <- parseJSON v
      pure (t, v')

data Field = MkField
  { fieldRequired :: Required,
    fieldTypes :: NonEmpty Type,
    fieldMultiple :: Multiple
  }
  deriving (Eq, Ord, Show, Generic, ToJSON)

instance FromJSON Field where
  parseJSON = genericParseJSON customOptions

newtype Children = MkChildren {getChildren :: Field}
  deriving (Eq, Ord, Show, Generic)
  deriving newtype (ToJSON, FromJSON)

data Required = Optional | Required
  deriving (Eq, Ord, Show, Generic, ToJSON)

instance FromJSON Required where
  parseJSON = withBool "Required" (\p -> pure (if p then Required else Optional))

data Type = MkType
  { fieldType :: Text,
    isNamed :: Named
  }
  deriving (Eq, Ord, Show, Generic, ToJSON)

instance FromJSON Type where
  parseJSON = genericParseJSON customOptions

data Named = Anonymous | Named
  deriving (Eq, Ord, Show, Generic, ToJSON)

instance FromJSON Named where
  parseJSON = withBool "Named" (\p -> pure (if p then Named else Anonymous))

data Multiple = Single | Multiple
  deriving (Eq, Ord, Show, Generic, ToJSON)

instance FromJSON Multiple where
  parseJSON = withBool "Multiple" (\p -> pure (if p then Multiple else Single))

customOptions :: Aeson.Options
customOptions =
  Aeson.defaultOptions
    { fieldLabelModifier = initLower . dropPrefix,
      constructorTagModifier = initLower
    }

dropPrefix :: String -> String
dropPrefix = Prelude.dropWhile isLower

initLower :: String -> String
initLower (c : cs) = toLower c : cs
initLower "" = ""

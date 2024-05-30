module AST.Runtime
  ( getChildDescription,
    listIsSingle,
    listOptionalSingle,
    flattenMaybeList,
    justOrErr,
  )
where

import AST.Err (Err)
import Data.Foldable (foldl')
import Data.Map.Strict (Map)
import Data.Map.Strict qualified as Map
import Data.Text (Text)
import TreeSitter.Api

-- returns (extra, positional, named)
-- beware, the extra nodes won't appear in the node-types.json file as children or fields
-- so that's why we filter them out into a separate field
getChildDescription :: Node -> ([Node], [Node], Map Text [Node])
getChildDescription node =
  (reverse extraRes, reverse positionalRes, namedRes)
  where
    (!extraRes, !positionalRes, !namedRes) =
      foldl'
        ( \(!extra, !positional, !named) n ->
            case nodeFieldName n of
              _ | nodeIsExtra n -> (n : extra, positional, named)
              Nothing
                -- tree-sitter specifies that only named nodes appear in the children field of node-types.json
                -- so skip anonymous nodes
                | nodeIsNamed n -> (extra, n : positional, named)
                | otherwise -> (extra, positional, named)
              Just name -> (extra, positional, Map.insertWith (++) name [n] named)
        )
        ([], [], Map.empty)
        (nodeChildren node)

flattenMaybeList :: Maybe [a] -> [a]
flattenMaybeList Nothing = []
flattenMaybeList (Just x) = x

listIsSingle :: [a] -> Maybe a
listIsSingle [x] = Just x
listIsSingle _ = Nothing

listOptionalSingle :: [a] -> Maybe (Maybe a)
listOptionalSingle [] = Just Nothing
listOptionalSingle [x] = Just (Just x)
listOptionalSingle _ = Nothing

justOrErr :: Text -> Maybe a -> Err a
justOrErr msg (Just x) = Right x
justOrErr msg Nothing = Left msg

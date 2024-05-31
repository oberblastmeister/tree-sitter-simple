module AST.Runtime
  ( getChildDescription,
    listIsSingle,
    listOptionalSingle,
    flattenMaybeList,
    justOrErr,
    List,
    castManyToSingle,
    castManyToMaybe,
    castManyToList,
    castManyToNonEmpty,
  )
where

import AST.Cast (Cast (..))
import AST.Err (Err)
import Data.Foldable (foldl')
import Data.List.NonEmpty (NonEmpty (..))
import Data.Map.Strict (Map)
import Data.Map.Strict qualified as Map
import Data.Text (Text)
import TreeSitter.Api

type List a = [a]

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
justOrErr _msg (Just x) = Right x
justOrErr msg Nothing = Left msg

castManyToSingle :: (Cast a) => [Node] -> Maybe a
castManyToSingle [x] = cast x
castManyToSingle _ = Nothing

castManyToMaybe :: (Cast a) => [Node] -> Maybe (Maybe a)
castManyToMaybe [] = Just Nothing
castManyToMaybe [x] = Just (cast x)
castManyToMaybe _ = Nothing

castManyToList :: (Cast a) => [Node] -> Maybe [a]
castManyToList = traverse cast

castManyToNonEmpty :: (Cast a) => [Node] -> Maybe (NonEmpty a)
castManyToNonEmpty [] = Nothing
castManyToNonEmpty (x : xs) = do
  x' <- cast x
  xs' <- traverse cast xs
  pure (x' :| xs')

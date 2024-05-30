module AST.Runtime
  ( getChildDescription,
    listIsSingle,
    listOptionalSingle,
  )
where

import Data.Foldable (foldl')
import Data.Map.Strict (Map)
import Data.Map.Strict qualified as Map
import Data.Text (Text)
import TreeSitter.Api

getChildDescription :: Node -> ([Node], Map Text [Node])
getChildDescription node =
  (reverse positionalRes, namedRes)
  where
    (!positionalRes, !namedRes) =
      foldl'
        ( \(!positional, !named) n ->
            case nodeFieldName n of
              Nothing -> (n : positional, named)
              Just name -> (positional, Map.insertWith (++) name [n] named)
        )
        undefined
        (nodeChildren node)

listIsSingle :: [a] -> Maybe a
listIsSingle [x] = Just x
listIsSingle _ = Nothing

listOptionalSingle :: [a] -> Maybe (Maybe a)
listOptionalSingle [] = Just Nothing
listOptionalSingle [x] = Just (Just x)
listOptionalSingle _ = Nothing

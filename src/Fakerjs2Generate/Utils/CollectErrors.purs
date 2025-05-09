module Fakerjs2Generate.Utils.CollectErrors where

import Prelude

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Array.NonEmpty as NonEmptyArray
import Data.Either (Either(..))
import Data.Either.Nested (type (\/))
import Data.Maybe (fromJust)
import Partial.Unsafe (unsafeCrashWith, unsafePartial)
import Data.Array.Extra (partitionEithers)

-- suppose:
-- input type:  Array (Either String (Either Error Int))
-- output type: Array (Either (Either Error Int) (Either Error Int))
-- input:  [Left "a", Right (Right 1), Left "b", Right (Left error1)]
-- output: Left [error1]
collectErrors
  :: forall a b error
   . NonEmptyArray (a \/ error \/ b)
  -> Either (NonEmptyArray error) (NonEmptyArray (a \/ b))
collectErrors = \xs ->
  case (partitionEithers handle (NonEmptyArray.toArray xs)) of
    { left: [], right } -> Right $ unsafePartial $ fromJust $ NonEmptyArray.fromArray right
    { left: [], right: [] } -> unsafeCrashWith "IMPOSSIBLE since NonEmptyArray in input"
    { left } -> Left $ unsafePartial $ fromJust $ NonEmptyArray.fromArray left
  where
  handle :: a \/ error \/ b -> error \/ a \/ b
  handle = case _ of
    Left a -> Right (Left a)
    Right (Left err) -> Left err
    Right (Right b) -> Right (Right b)

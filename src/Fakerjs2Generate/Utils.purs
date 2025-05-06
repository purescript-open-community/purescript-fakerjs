module Fakerjs2Generate.Utils where

import Prelude

import Data.Array as Array
import Data.Array.NonEmpty (NonEmptyArray)
import Data.Array.NonEmpty as NonEmptyArray
import Data.Either (Either, blush, hush)
import Data.Maybe (Maybe)
import Data.String (Pattern, split)
import Data.String.Extra (pascalCase)
import Data.String.NonEmpty (NonEmptyString)
import Data.String.NonEmpty as NonEmptyString
import Data.Traversable (class Traversable, sequence, traverse)
import Data.Tuple (Tuple)

splitNE :: Pattern -> NonEmptyString -> Maybe (NonEmptyArray NonEmptyString)
splitNE pattern nes = do
  parts <- traverse NonEmptyString.fromString <<< Array.filter (_ /= "") <<< split pattern <<< NonEmptyString.toString $ nes
  NonEmptyArray.fromArray parts

-- splitNE :: Pattern -> NonEmptyString -> NonEmptyArray NonEmptyString
-- splitNE p x = unsafePartial $ fromJust $ NonEmptyArray.fromArray $ map NonEmptyString.unsafeFromString $ Array.filter (_ == "") $ split p $ NonEmptyString.toString x

pascalCaseNE :: Partial => NonEmptyString -> NonEmptyString
pascalCaseNE x = NonEmptyString.unsafeFromString $ pascalCase $ NonEmptyString.toString x

lefts' :: forall a b. Array (Either a b) -> Array a
lefts' = Array.mapMaybe blush

rights' :: forall a b. Array (Either a b) -> Array b
rights' = Array.mapMaybe hush

lefts :: forall a b f. Functor f => Traversable f => Array (f (Either a b)) -> Array (f a)
lefts = Array.mapMaybe (map blush >>> sequence)

rights :: forall a b f. Functor f => Traversable f => Array (f (Either a b)) -> Array (f b)
rights = Array.mapMaybe (map hush >>> sequence)

-- leftsRights :: forall a b x f g. Functor f => Array (f (Either a b)) -> Array (f a) /\ Array (f b)
-- leftsRights xs =
--   let
--     lefts = Array.mapMaybe (\fe -> map Left fe # hush) xs
--     rights = Array.mapMaybe (\fe -> map Right fe # hush) xs
--   in
--     lefts /\ rights

leftsNE :: forall a b x. NonEmptyArray (Tuple x (Either a b)) -> Array (Tuple x a)
leftsNE = NonEmptyArray.mapMaybe (map blush >>> sequence)

rightsNE :: forall a b x. NonEmptyArray (Tuple x (Either a b)) -> Array (Tuple x b)
rightsNE = NonEmptyArray.mapMaybe (map hush >>> sequence)

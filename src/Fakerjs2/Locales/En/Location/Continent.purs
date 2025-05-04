module Fakerjs2.Locales.En.Location.Continent (continent) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

continent = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Africa", "Antarctica", "Asia", "Australia", "Europe", "North America", "South America" ]

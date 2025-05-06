module Fakerjs2.Locales.De.Location.CitySuffix (city_suffix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Unsafe.Coerce (unsafeCoerce)

city_suffix = (unsafeCoerce :: Array String -> NonEmptyArray String)
  [ "stadt", "dorf", "land", "scheid", "burg" ]

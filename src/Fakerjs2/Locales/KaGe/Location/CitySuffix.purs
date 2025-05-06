module Fakerjs2.Locales.KaGe.Location.CitySuffix (city_suffix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Unsafe.Coerce (unsafeCoerce)

city_suffix = (unsafeCoerce :: Array String -> NonEmptyArray String)
  [ "სოფელი", "ძირი", "სკარი", "დაბა" ]

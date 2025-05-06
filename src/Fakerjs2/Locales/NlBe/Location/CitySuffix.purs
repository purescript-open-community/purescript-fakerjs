module Fakerjs2.Locales.NlBe.Location.CitySuffix (city_suffix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Unsafe.Coerce (unsafeCoerce)

city_suffix = (unsafeCoerce :: Array String -> NonEmptyArray String)
  [ "gem", "tem", "vijve", "zele" ]

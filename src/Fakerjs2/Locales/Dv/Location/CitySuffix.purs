module Fakerjs2.Locales.Dv.Location.CitySuffix (city_suffix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (CitySuffix)
import Unsafe.Coerce (unsafeCoerce)

city_suffix :: CitySuffix
city_suffix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "ފ\x0007aaށ\x0007a8"
  , "ދ\x0007ab"
  , "ފ\x0007a6ރ\x0007aa"
  , "ރ\x0007a6ށ\x0007b0"
  , "ކ\x0007aeޑ\x0007a8"
  ]

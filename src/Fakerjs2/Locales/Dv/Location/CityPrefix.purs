module Fakerjs2.Locales.Dv.Location.CityPrefix (city_prefix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (CityPrefix)
import Unsafe.Coerce (unsafeCoerce)

city_prefix :: CityPrefix
city_prefix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "އ\x0007a8ރ\x0007aaމ\x0007a6ތ\x0007a8"
  , "ހ\x0007aaޅ\x0007a6ނގ\x0007aa"
  , "ދ\x0007acކ\x0007aaނ\x0007aa"
  , "އ\x0007aaތ\x0007aaރ\x0007aa"
  , "ދ\x0007ac"
  ]

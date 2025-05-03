module Fakerjs2.Locales.De.Location.CityPrefix (city_prefix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (CityPrefix)
import Unsafe.Coerce (unsafeCoerce)

city_prefix :: CityPrefix
city_prefix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Nord", "Ost", "West", "Süd", "Neu", "Alt", "Bad" ]

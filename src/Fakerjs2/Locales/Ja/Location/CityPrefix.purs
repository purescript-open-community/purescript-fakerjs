module Fakerjs2.Locales.Ja.Location.CityPrefix (city_prefix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (CityPrefix)
import Unsafe.Coerce (unsafeCoerce)

city_prefix :: CityPrefix
city_prefix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "北", "東", "西", "南", "新", "湖", "港" ]

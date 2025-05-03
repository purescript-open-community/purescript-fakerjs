module Fakerjs2.Locales.EnGb.Location.CityInfix (city_infix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (CityInfix)
import Unsafe.Coerce (unsafeCoerce)

city_infix :: CityInfix
city_infix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "-under-", "-over-", "-le-", "-upon-", "-on-" ]

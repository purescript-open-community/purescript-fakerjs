module Fakerjs2.Locales.ZuZa.Location.CityName (city_name) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

city_name = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Polokwane"
  , "eGoli"
  , "Pretoria"
  , "uTshwane"
  , "eThekwini"
  , "umGungundlovu"
  , "Mbombela"
  , "eKapa"
  , "Stellenbosch"
  , "iBhayi"
  , "eMonti"
  , "Kimberley"
  , "Rustenburg"
  , "Bloemfontein"
  ]

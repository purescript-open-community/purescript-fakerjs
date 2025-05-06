module Fakerjs2.Locales.EnZa.Location.CityName (city_name) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

city_name = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Polokwane"
  , "Johannesburg"
  , "Pretoria"
  , "Tshwane"
  , "Durban"
  , "Pietermaritzburg"
  , "Mbombela"
  , "Cape Town"
  , "Stellenbosch"
  , "Port Elizabeth"
  , "East London"
  , "Kimberley"
  , "Rustenburg"
  , "Bloemfontein"
  ]

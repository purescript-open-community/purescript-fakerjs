module Fakerjs2.Locales.AfZa.Location.CityName (city_name) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (CityName)
import Unsafe.Coerce (unsafeCoerce)

city_name :: CityName
city_name = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Polokwane"
  , "Johannesburg"
  , "Pretoria"
  , "Tshwane"
  , "Durban"
  , "Pietermaritzburg"
  , "Nelspruit"
  , "Kaapstad"
  , "Stellenbosch"
  , "Port Elizabeth"
  , "Oos-Londen"
  , "Kimberley"
  , "Rustenburg"
  , "Bloemfontein"
  ]

module Fakerjs2.Locales.NbNo.Location.CityName (city_name) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (CityName)
import Unsafe.Coerce (unsafeCoerce)

city_name :: CityName
city_name = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Fet"
  , "Gjes"
  , "Høy"
  , "Inn"
  , "Fager"
  , "Lille"
  , "Lo"
  , "Mal"
  , "Nord"
  , "Nær"
  , "Sand"
  , "Sme"
  , "Stav"
  , "Stor"
  , "Tand"
  , "Ut"
  , "Vest"
  ]

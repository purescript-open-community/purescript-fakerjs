module Fakerjs2.Locales.FrLu.Location.CityName (city_name) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (CityName)
import Unsafe.Coerce (unsafeCoerce)

city_name :: CityName
city_name = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Diekirch"
  , "Differdange"
  , "Dudelange"
  , "Echternach"
  , "Esch-sur-Alzette"
  , "Ettelbruck"
  , "Grevenmacher"
  , "Luxembourg"
  , "Remich"
  , "Rumelange"
  , "Vianden"
  , "Wiltz"
  ]

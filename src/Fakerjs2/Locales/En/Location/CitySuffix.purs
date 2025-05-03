module Fakerjs2.Locales.En.Location.CitySuffix (city_suffix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (CitySuffix)
import Unsafe.Coerce (unsafeCoerce)

city_suffix :: CitySuffix
city_suffix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "town"
  , "ton"
  , "land"
  , "ville"
  , "berg"
  , "burgh"
  , "boro"
  , "borough"
  , "bury"
  , "view"
  , "port"
  , "mouth"
  , "stad"
  , "stead"
  , "furt"
  , "chester"
  , "cester"
  , "fort"
  , "field"
  , "haven"
  , "side"
  , "shire"
  , "worth"
  ]

module Fakerjs2.Locales.En.Location.CitySuffix (city_suffix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Unsafe.Coerce (unsafeCoerce)

city_suffix = (unsafeCoerce :: Array String -> NonEmptyArray String)
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

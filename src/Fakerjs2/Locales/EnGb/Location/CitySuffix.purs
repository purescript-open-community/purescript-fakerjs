module Fakerjs2.Locales.EnGb.Location.CitySuffix (city_suffix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (CitySuffix)
import Unsafe.Coerce (unsafeCoerce)

city_suffix :: CitySuffix
city_suffix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "ton"
  , "ham"
  , "ley"
  , "ington"
  , "ford"
  , "field"
  , "bury"
  , "don"
  , "ing"
  , "worth"
  , "well"
  , "ingham"
  , "wood"
  , "ridge"
  , "borough"
  , "stone"
  , "hill"
  , "thorpe"
  , "hampton"
  , "wick"
  , " Green"
  , " Park"
  , " Hill"
  , " Court"
  , " Heath"
  , " Bridge"
  , " End"
  , " Common"
  , " Place"
  , " Cross"
  , " Gardens"
  ]

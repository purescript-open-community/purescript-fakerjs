module Fakerjs2.Locales.Sv.Location.CitySuffix (city_suffix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (CitySuffix)
import Unsafe.Coerce (unsafeCoerce)

city_suffix :: CitySuffix
city_suffix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "stad"
  , "land"
  , "sås"
  , "ås"
  , "holm"
  , "tuna"
  , "sta"
  , "berg"
  , "löv"
  , "borg"
  , "mora"
  , "hamn"
  , "fors"
  , "köping"
  , "by"
  , "hult"
  , "torp"
  , "fred"
  , "vik"
  ]

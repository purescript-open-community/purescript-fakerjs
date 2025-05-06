module Fakerjs2.Locales.Sv.Location.CitySuffix (city_suffix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Unsafe.Coerce (unsafeCoerce)

city_suffix = (unsafeCoerce :: Array String -> NonEmptyArray String)
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

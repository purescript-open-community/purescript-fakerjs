module Fakerjs2.Locales.Fi.Location.StreetSuffix (street_suffix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

street_suffix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "katu"
  , "tie"
  , "kuja"
  , "polku"
  , "kaari"
  , "linja"
  , "raitti"
  , "rinne"
  , "penger"
  , "ranta"
  , "väylä"
  ]

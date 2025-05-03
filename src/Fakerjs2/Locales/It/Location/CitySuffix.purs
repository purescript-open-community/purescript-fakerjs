module Fakerjs2.Locales.It.Location.CitySuffix (city_suffix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (CitySuffix)
import Unsafe.Coerce (unsafeCoerce)

city_suffix :: CitySuffix
city_suffix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "a mare"
  , "lido"
  , "ligure"
  , "del friuli"
  , "salentino"
  , "calabro"
  , "veneto"
  , "nell'emilia"
  , "umbro"
  , "laziale"
  , "terme"
  , "sardo"
  ]

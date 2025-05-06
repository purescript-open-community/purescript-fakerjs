module Fakerjs2.Locales.It.Location.CitySuffix (city_suffix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Unsafe.Coerce (unsafeCoerce)

city_suffix = (unsafeCoerce :: Array String -> NonEmptyArray String)
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

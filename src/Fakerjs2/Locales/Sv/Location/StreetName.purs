module Fakerjs2.Locales.Sv.Location.StreetName (street_name) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (StreetName)
import Unsafe.Coerce (unsafeCoerce)

street_name :: StreetName
street_name = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Björk"
  , "Järnvägs"
  , "Ring"
  , "Skol"
  , "Skogs"
  , "Ny"
  , "Gran"
  , "Idrotts"
  , "Stor"
  , "Kyrk"
  , "Industri"
  , "Park"
  , "Strand"
  , "Trädgård"
  , "Ängs"
  , "Kyrko"
  , "Villa"
  , "Ek"
  , "Kvarn"
  , "Stations"
  , "Back"
  , "Furu"
  , "Gen"
  , "Fabriks"
  , "Åker"
  , "Bäck"
  , "Asp"
  ]

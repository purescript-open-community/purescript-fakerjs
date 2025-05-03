module Fakerjs2.Locales.Sv.Commerce.Department (department) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Department)
import Unsafe.Coerce (unsafeCoerce)

department :: Department
department = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Böcker"
  , "Datorer"
  , "Elektronik"
  , "Filmer"
  , "Hem"
  , "Hälsa"
  , "Klädsel"
  , "Leksaker"
  , "Livsmedel"
  , "Musik"
  , "Skor"
  , "Skönhet"
  , "Smycken"
  , "Spel"
  , "Sport"
  , "Trädgård"
  , "Verktyg"
  ]

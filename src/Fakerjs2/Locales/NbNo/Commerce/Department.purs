module Fakerjs2.Locales.NbNo.Commerce.Department (department) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

department = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Barn"
  , "Bøker"
  , "Dagligvarer"
  , "Datamaskiner"
  , "Elektronikk"
  , "Filmer"
  , "Hage og utemiljø"
  , "Helse"
  , "Hjem"
  , "Klær"
  , "Leker"
  , "Musikk"
  , "Skjønnhet"
  , "Sko"
  , "Smykker"
  , "Spill"
  , "Sport"
  , "Verktøy"
  ]

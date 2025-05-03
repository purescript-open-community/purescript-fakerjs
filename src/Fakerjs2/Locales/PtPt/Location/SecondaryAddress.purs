module Fakerjs2.Locales.PtPt.Location.SecondaryAddress (secondary_address) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (SecondaryAddress)
import Unsafe.Coerce (unsafeCoerce)

secondary_address :: SecondaryAddress
secondary_address = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "#Drt."
  , "#Esq."
  , "#Frt"
  , "R/C"
  , "Cv"
  , "#A"
  , "#B"
  , "#C"
  , "Bloco"
  , "Ed."
  , "Ap."
  , "Loja"
  , "Piso"
  , "Sub"
  , "Terr."
  , "Slt."
  , "Gar."
  , "And."
  , "Mor."
  , "Escr."
  ]

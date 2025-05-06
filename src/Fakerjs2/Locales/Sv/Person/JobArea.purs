module Fakerjs2.Locales.Sv.Person.JobArea (job_area) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

job_area = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Verkställande"
  , "Program"
  , "Varumärke"
  , "Säkerhet"
  , "Forskning"
  , "Marknadsföring"
  , "Direktiv"
  , "Implementation"
  , "Integration"
  , "Funktionalitet"
  , "Taktik"
  , "Marknader"
  , "Division"
  , "Grupp"
  , "Optimering"
  , "Infrastruktur"
  , "Operativ"
  , "Finansiell"
  , "Kommunikation"
  ]

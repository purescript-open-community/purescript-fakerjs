module Fakerjs2.Locales.Lv.Person.JobDescriptor (job_descriptor) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

job_descriptor = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Galvenais"
  , "Vecākais"
  , "Tiešo"
  , "Korporatīvās"
  , "Produktu"
  , "Reģionālās"
  , "Rajona"
  , "Klientu"
  , "Investīciju"
  , "Starptautiskās"
  , "Iekšējās"
  , "Personu"
  ]

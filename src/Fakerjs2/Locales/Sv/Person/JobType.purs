module Fakerjs2.Locales.Sv.Person.JobType (job_type) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

job_type = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Direktör"
  , "Ingenjör"
  , "Handledare"
  , "Koordinator"
  , "Specialist"
  , "Administratör"
  , "Arkitekt"
  , "Analytiker"
  , "Designer"
  , "Planerare"
  , "Tekniker"
  , "Utvecklare"
  , "Konsult"
  , "Representant"
  , "Chef"
  , "Producent"
  , "Assistent"
  ]

module Fakerjs2.Locales.Hr.Person.JobType (job_type) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

job_type = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "voditelj"
  , "suradnik"
  , "službenik"
  , "menadžer"
  , "inženjer"
  , "specijalist"
  , "direktor"
  , "koordinator"
  , "administrator"
  , "arhitekt"
  , "analist"
  , "dizajner"
  , "planer"
  , "ekspert"
  , "savjetnik"
  , "organizator"
  , "tehničar"
  , "konzultant"
  , "asistent"
  , "agent"
  , "predstavnik"
  , "referent"
  , "strateg"
  ]

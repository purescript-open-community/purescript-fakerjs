module Fakerjs2.Locales.Hr.Person.JobDescriptor (job_descriptor) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

job_descriptor = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Glavni"
  , "Senior"
  , "Korporativni"
  , "Nacionalni"
  , "Regionalni"
  , "Okružni"
  , "Središnji"
  , "Globalni"
  , "Međunarodni"
  , "Operativni"
  ]

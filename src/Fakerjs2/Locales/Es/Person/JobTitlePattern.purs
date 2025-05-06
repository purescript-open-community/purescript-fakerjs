module Fakerjs2.Locales.Es.Person.JobTitlePattern (job_title_pattern) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

job_title_pattern = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "{{person.jobType}} de {{person.jobArea}} {{person.jobDescriptor}}" ]

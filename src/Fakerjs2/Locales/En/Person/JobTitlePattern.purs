module Fakerjs2.Locales.En.Person.JobTitlePattern (job_title_pattern) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (JobTitlePattern)
import Unsafe.Coerce (unsafeCoerce)

job_title_pattern :: JobTitlePattern
job_title_pattern = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "{{person.jobDescriptor}} {{person.jobArea}} {{person.jobType}}" ]

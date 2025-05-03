module Fakerjs2.Locales.Mk.Person.JobType (job_type) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (JobType)
import Unsafe.Coerce (unsafeCoerce)

job_type :: JobType
job_type = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "директор"
  , "соработник"
  , "управител"
  , "инженер"
  , "специјалист"
  , "координатор"
  , "администратор"
  , "архитект"
  , "аналитичар"
  , "дизајнер"
  , "техничар"
  , "консултант"
  , "помошник"
  , "агент"
  , "застапник"
  ]

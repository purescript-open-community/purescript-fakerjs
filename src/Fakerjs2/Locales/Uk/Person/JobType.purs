module Fakerjs2.Locales.Uk.Person.JobType (job_type) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (JobType)
import Unsafe.Coerce (unsafeCoerce)

job_type :: JobType
job_type = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "інженер"
  , "агент"
  , "адміністратор"
  , "аналітик"
  , "архітектор"
  , "дизайнер"
  , "керівник"
  , "консультант"
  , "координатор"
  , "менеджер"
  , "планувальник"
  , "помічник"
  , "розробник"
  , "спеціаліст"
  , "співробітник"
  , "технік"
  ]

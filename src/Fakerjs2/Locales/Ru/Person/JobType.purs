module Fakerjs2.Locales.Ru.Person.JobType (job_type) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

job_type = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "агент"
  , "администратор"
  , "аналитик"
  , "архитектор"
  , "дизайнер"
  , "инженер"
  , "консультант"
  , "координатор"
  , "менеджер"
  , "планировщик"
  , "помощник"
  , "разработчик"
  , "руководитель"
  , "сотрудник"
  , "специалист"
  , "техник"
  ]

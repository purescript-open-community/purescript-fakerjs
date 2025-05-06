module Fakerjs2.Locales.Ru.Person.JobDescriptor (job_descriptor) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

job_descriptor = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Ведущий"
  , "Генеральный"
  , "Главный"
  , "Глобальный"
  , "Международный"
  , "Национальный"
  , "Областной"
  , "Районный"
  , "Региональный"
  , "Центральный"
  ]

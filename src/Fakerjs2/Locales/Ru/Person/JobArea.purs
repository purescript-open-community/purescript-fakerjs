module Fakerjs2.Locales.Ru.Person.JobArea (job_area) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

job_area = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "интеграционный"
  , "логистический"
  , "маркетинговый"
  , "оптимизационный"
  , "страховой"
  , "функциональный"
  , "коммуникационный"
  , "операционный"
  ]

module Fakerjs2.Locales.Uk.Person.JobArea (job_area) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (JobArea)
import Unsafe.Coerce (unsafeCoerce)

job_area :: JobArea
job_area = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "маркетинговий"
  , "оптимізаційний"
  , "страховий"
  , "функціональний"
  , "інтеграційний"
  , "логістичний"
  ]

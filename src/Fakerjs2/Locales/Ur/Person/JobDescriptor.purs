module Fakerjs2.Locales.Ur.Person.JobDescriptor (job_descriptor) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (JobDescriptor)
import Unsafe.Coerce (unsafeCoerce)

job_descriptor :: JobDescriptor
job_descriptor = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "سربراہ"
  , "اعلی\x000670"
  , "مستقبل"
  , "شہری"
  , "ڈسٹرکٹ"
  , "درمیانہ"
  , "گلوبل"
  , "گاہک"
  , "بین ال اقوامی"
  , "ا\x000653گے"
  , "اندرونی"
  , "انسانی"
  , "چیف"
  , "پرنسپل"
  ]

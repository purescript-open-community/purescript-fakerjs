module Fakerjs2.Locales.Ur.Person.JobArea (job_area) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (JobArea)
import Unsafe.Coerce (unsafeCoerce)

job_area :: JobArea
job_area = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "حل"
  , "پروگرام"
  , "برانڈ"
  , "سکیورٹی"
  , "ریسرچ"
  , "ا\x000653گاہی"
  , "حربہ"
  , "شناخت"
  , "بازار"
  , "گروہ"
  , "تقسیم"
  , "استعمال"
  , "بات چیت"
  , "جال"
  ]

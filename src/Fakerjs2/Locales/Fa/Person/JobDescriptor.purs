module Fakerjs2.Locales.Fa.Person.JobDescriptor (job_descriptor) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (JobDescriptor)
import Unsafe.Coerce (unsafeCoerce)

job_descriptor :: JobDescriptor
job_descriptor = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "رهبر"
  , "ارشد"
  , "مستقیم"
  , "پویا"
  , "آینده"
  , "محصول"
  , "ملی"
  , "منطقه"
  , "ناحیه"
  , "مرکزی"
  , "جهانی"
  , "مشتری"
  , "سرمایه گذار"
  , "بین المللی"
  , "میراث"
  , "داخلی"
  , "انسان"
  , "رئیس"
  , "مدیر اصلی"
  ]

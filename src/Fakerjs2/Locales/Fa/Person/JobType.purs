module Fakerjs2.Locales.Fa.Person.JobType (job_type) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

job_type = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "کارگر ساده"
  , "سرپرست کارگاه"
  , "ناظر"
  , "مهندس پروژه"
  , "کارفرما"
  , "مدیر"
  , "سرپرست"
  , "اموردفتری"
  , "کارمند"
  , "مسئول"
  , "مدیرعامل"
  , "رئیس هیئت مدیره"
  , "عضو هیئت مدیره"
  , "کارشناس"
  , "مربی"
  , "مدرس"
  , "منشی"
  , "فروشنده"
  , "متصدی"
  , "تکنسین"
  , "استادکار"
  , "نصاب"
  , "حسابدار"
  , "راننده"
  , "نگهبان"
  , "رئیس"
  , "مهندس"
  , "مدیرفروش"
  , "کارشناس فنی"
  , "مسئول فنی"
  , "کارگر فنی"
  , "بازاریاب"
  , "کارپرداز"
  , "خدمتگزار"
  ]

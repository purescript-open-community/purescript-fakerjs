module Fakerjs2.Locales.Ar.Person.JobType (job_type) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

job_type = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "مشرف"
  , "تنفيذي"
  , "مدير"
  , "مهندس"
  , "متخصص"
  , "رئيس مؤسسة"
  , "منسق"
  , "إداري"
  , "مخطط"
  , "محلل"
  , "مصمم"
  , "تقني"
  , "مبرمج"
  , "منتج"
  , "مستشار"
  , "مساعد"
  , "وكيل"
  , "متدرب"
  ]

module Fakerjs2.Locales.Ar.Commerce.Department (department) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Department)
import Unsafe.Coerce (unsafeCoerce)

department :: Department
department = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "أحذية"
  , "أدوات"
  , "أطفال"
  , "أغراض رياضية"
  , "ألعاب"
  , "إلكترونيات"
  , "السيارات"
  , "بقالة"
  , "بيت"
  , "جمال"
  , "حديقة"
  , "حواسيب"
  , "رضع"
  , "صحة"
  , "صناعة"
  , "في الهواء الطلق"
  , "كتب"
  , "مجوهرات"
  , "ملابس"
  ]

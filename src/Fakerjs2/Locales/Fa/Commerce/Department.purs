module Fakerjs2.Locales.Fa.Commerce.Department (department) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Department)
import Unsafe.Coerce (unsafeCoerce)

department :: Department
department = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "ابزار"
  , "اتومبیل"
  , "اسباب بازی"
  , "الکترونیک"
  , "بازی ها"
  , "باغ"
  , "بچه"
  , "بچه ها"
  , "بیرون از خانه"
  , "تن پوش"
  , "خانه"
  , "خواربار"
  , "رایانه"
  , "زیبایی"
  , "زیور آلات"
  , "سلامتی"
  , "صنعتی"
  , "فیلم ها"
  , "موزیک"
  , "ورزش ها"
  , "کتاب ها"
  , "کفش"
  ]

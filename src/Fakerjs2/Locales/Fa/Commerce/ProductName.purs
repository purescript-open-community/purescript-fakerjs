module Fakerjs2.Locales.Fa.Commerce.ProductName (adjective, material, product) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

adjective = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "ارگونومیک"
  , "باهوش"
  , "باور نکردنی"
  , "بدون محدودیت"
  , "براق"
  , "جذاب"
  , "خارق العاده"
  , "خوش طعم"
  , "دست ساز"
  , "عالی"
  , "لطیف"
  , "معمولی"
  , "کاربردی"
  , "کوچک"
  ]

material = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "استیل", "بتنی", "تازه", "فلزی", "نرم", "پلاستیکی", "چوبی", "کتان", "گرانیتی", "یخ زده" ]

product = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "بیکن"
  , "تن ماهی"
  , "توپ"
  , "حوله"
  , "دستکش"
  , "دوچرخه"
  , "سالاد"
  , "سوسیس"
  , "شلوار"
  , "صابون"
  , "صندلی"
  , "ماشین"
  , "ماهی"
  , "ماوس"
  , "مرغ"
  , "میز"
  , "پنیر"
  , "پیتزا"
  , "پیراهن"
  , "چیپس"
  , "کامپیوتر"
  , "کفش"
  , "کلاه"
  , "کیبورد"
  ]

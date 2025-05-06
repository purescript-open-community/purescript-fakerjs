module Fakerjs2.Locales.Fa.Color.Human (human) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

human = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "آبی"
  , "آبی آسمانی"
  , "ارغوانی"
  , "بنفش"
  , "خاکستری"
  , "خرمایی"
  , "زرد"
  , "زیتونی"
  , "سبز"
  , "سفید"
  , "سیاه"
  , "صورتی"
  , "طلایی"
  , "فیروزه ای"
  , "قرمز"
  , "قهوه ای"
  , "لاجوردی"
  , "نارنجی"
  , "نقره ای"
  , "نیلی"
  ]

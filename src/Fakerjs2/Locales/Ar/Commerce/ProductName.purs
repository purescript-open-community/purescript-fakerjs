module Fakerjs2.Locales.Ar.Commerce.ProductName (adjective, material, product) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

adjective = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "أملس"
  , "بدون علامة"
  , "ذكي"
  , "رائع"
  , "ريفي"
  , "صغير"
  , "صنع يدوي"
  , "طيب المذاق"
  , "عام"
  , "عملي"
  , "لا يصدق"
  , "مرخص"
  , "مريح"
  , "مشتق"
  , "ممتاز"
  , "يدويا"
  ]

material = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "بلاستيك", "خرسانة", "خشبي", "صوان", "طازج", "فولاذ", "قطن", "مجمد", "مطاط", "معدن", "ناعم" ]

product = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "أحذية"
  , "بنطال"
  , "بيتزا"
  , "تونة"
  , "جبن"
  , "حاسوب"
  , "دجاج"
  , "دراجة هوائية"
  , "رقائق بطاطس"
  , "سجق"
  , "سلطة"
  , "سمك"
  , "سيارة"
  , "صابون"
  , "طاولة"
  , "فأر"
  , "قبعة"
  , "قفازات"
  , "قميص"
  , "كرة"
  , "كرسي"
  , "لحم خنزير مقدد"
  , "لوحة المفاتيح"
  , "مناشف"
  ]

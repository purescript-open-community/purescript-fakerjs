module Fakerjs2.Locales.Ur.Person.FirstName (female, generic, male) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (FirstNameFemale, FirstNameGeneric, FirstNameMale)
import Unsafe.Coerce (unsafeCoerce)

female :: FirstNameFemale
female = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "اقدس"
  , "ا\x000653منہ"
  , "حدید"
  , "حسنہ"
  , "حفصہ"
  , "حمیرہ"
  , "خدیجہ"
  , "رابعہ"
  , "روبینہ"
  , "روزینہ"
  , "شہناز"
  , "عایشہ"
  , "عمائم"
  , "مریم"
  , "مشال"
  , "منایل"
  , "نوشین"
  , "وردہ"
  ]

generic :: FirstNameGeneric
generic = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "ابراہیم"
  , "احسن"
  , "اقدس"
  , "اویس"
  , "ا\x000653منہ"
  , "حدید"
  , "حسنہ"
  , "حفصہ"
  , "حمزہ"
  , "حمیرہ"
  , "خدیجہ"
  , "رابعہ"
  , "روبینہ"
  , "روزینہ"
  , "سیف"
  , "شفیع"
  , "شہناز"
  , "عادل"
  , "عایشہ"
  , "عبداللہ"
  , "عثمان"
  , "عمائم"
  , "عمیر"
  , "فرہان"
  , "محسن"
  , "مریم"
  , "مسود"
  , "مشال"
  , "ممتاز"
  , "منایل"
  , "نوشین"
  , "وردہ"
  , "وسیم"
  , "ولید"
  , "کمال"
  , "یاسین"
  ]

male :: FirstNameMale
male = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "ابراہیم"
  , "احسن"
  , "اویس"
  , "حمزہ"
  , "سیف"
  , "شفیع"
  , "عادل"
  , "عبداللہ"
  , "عثمان"
  , "عمیر"
  , "فرہان"
  , "محسن"
  , "مسود"
  , "ممتاز"
  , "وسیم"
  , "ولید"
  , "کمال"
  , "یاسین"
  ]

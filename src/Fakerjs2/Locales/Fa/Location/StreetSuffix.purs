module Fakerjs2.Locales.Fa.Location.StreetSuffix (street_suffix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (StreetSuffix)
import Unsafe.Coerce (unsafeCoerce)

street_suffix :: StreetSuffix
street_suffix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "آزادی"
  , "آفریقا"
  , "آذربایجان"
  , "حقانی"
  , "امیرکبیر"
  , "اجاره دار"
  , "اقبال لاهوری"
  , "ابوذر"
  , "قدس"
  , "سباری"
  , "فاطمی"
  , "مالک اشتر"
  , "نیایش"
  , "دیباجی"
  , "واعظی"
  , "دستغیب"
  , "موحد دانش"
  , "کارگر شمالی"
  , "استاد قریب"
  , "یادگار امام"
  , "دکتر چمران"
  , "رسالت"
  , "سمیه"
  , "شهید مطهری"
  , "هویزه"
  , "دماوند"
  , "توحید"
  , "ستارخان"
  , "کارون"
  , "استادمعین"
  , "رامین"
  , "اندرزگو"
  ]

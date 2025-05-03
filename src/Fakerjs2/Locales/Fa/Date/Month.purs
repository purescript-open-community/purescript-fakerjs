module Fakerjs2.Locales.Fa.Date.Month (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (MonthAbbr, MonthWide)
import Unsafe.Coerce (unsafeCoerce)

abbr :: MonthAbbr
abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "آبا", "آذر", "ارد", "اسف", "بهم", "تیر", "خرد", "دی", "شهر", "فرو", "مرد", "مهر" ]

wide :: MonthWide
wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "آبان"
  , "آذر"
  , "اردیبهشت"
  , "اسفند"
  , "بهمن"
  , "تیر"
  , "خرداد"
  , "دی"
  , "شهریور"
  , "فروردین"
  , "مرداد"
  , "مهر"
  ]

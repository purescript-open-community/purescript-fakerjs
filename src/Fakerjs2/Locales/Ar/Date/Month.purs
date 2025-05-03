module Fakerjs2.Locales.Ar.Date.Month (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (MonthAbbr, MonthWide)
import Unsafe.Coerce (unsafeCoerce)

abbr :: MonthAbbr
abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "أغسطس"
  , "أكتوبر"
  , "إبريل"
  , "ديسمبر"
  , "سبتمبر"
  , "فبراير"
  , "مارس"
  , "مايو"
  , "نوفمبر"
  , "يناير"
  , "يوليو"
  , "يونيو"
  ]

wide :: MonthWide
wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "آب"
  , "آذ\x00064eار"
  , "أ\x00064eي\x00064e\x000651ار"
  , "أ\x00064eي\x000652ل\x00064fول"
  , "ت\x00064eم\x00064f\x000651وز"
  , "ت\x000650ش\x000652ر\x000650ين ٱلث\x00064e\x000651ان\x000650ي"
  , "ت\x000650ش\x000652ر\x000650ين ٱل\x000652أ\x00064eو\x00064e\x000651ل"
  , "ح\x00064eز\x000650ير\x00064eان"
  , "ش\x00064fب\x00064eاط"
  , "ك\x00064eان\x00064fون ٱلث\x00064e\x000651ان\x000650ي"
  , "ك\x00064eان\x00064fون ٱل\x000652أ\x00064eو\x00064e\x000651ل"
  , "ن\x00064eي\x000652س\x00064eان"
  ]

module Fakerjs2.Locales.Hy.Date.Weekday (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (WeekdayAbbr, WeekdayWide)
import Unsafe.Coerce (unsafeCoerce)

abbr :: WeekdayAbbr
abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "երկ", "երք", "կրկ", "հնգ", "շբթ", "ուրբ", "չրք" ]

wide :: WeekdayWide
wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Երեքշաբթի", "Երկուշաբթի", "Կիրակի", "Հինգշաբթի", "Շաբաթ", "Ուրբաթ", "Չորեքշաբթի" ]

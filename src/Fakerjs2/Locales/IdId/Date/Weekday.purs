module Fakerjs2.Locales.IdId.Date.Weekday (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (WeekdayAbbr, WeekdayWide)
import Unsafe.Coerce (unsafeCoerce)

abbr :: WeekdayAbbr
abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Jum", "Kam", "Min", "Rab", "Sab", "Sel", "Sen" ]

wide :: WeekdayWide
wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Jumat", "Kamis", "Minggu", "Rabu", "Sabtu", "Selasa", "Senin" ]

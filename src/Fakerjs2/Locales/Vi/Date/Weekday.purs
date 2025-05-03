module Fakerjs2.Locales.Vi.Date.Weekday (abbr, abbr_context, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (WeekdayAbbr, WeekdayAbbrContext, WeekdayWide)
import Unsafe.Coerce (unsafeCoerce)

abbr :: WeekdayAbbr
abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "CN", "T2", "T3", "T4", "T5", "T6", "T7" ]

abbr_context :: WeekdayAbbrContext
abbr_context = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "C.Nhật", "Thứ 2", "Thứ 3", "Thứ 4", "Thứ 5", "Thứ 6", "Thứ 7" ]

wide :: WeekdayWide
wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Chủ nhật", "Thứ ba", "Thứ bảy", "Thứ hai", "Thứ năm", "Thứ sáu", "Thứ tư" ]

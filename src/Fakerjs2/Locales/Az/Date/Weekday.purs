module Fakerjs2.Locales.Az.Date.Weekday (abbr, abbr_context, wide, wide_context) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (WeekdayAbbr, WeekdayAbbrContext, WeekdayWide, WeekdayWideContext)
import Unsafe.Coerce (unsafeCoerce)

abbr :: WeekdayAbbr
abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "BE", "Ba", "CA", "Cü", "ÇA", "Çə", "Şə" ]

abbr_context :: WeekdayAbbrContext
abbr_context = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "вс", "вт", "пн", "пт", "сб", "ср", "чт" ]

wide :: WeekdayWide
wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Bazar", "Bazar ertəsi", "Cümə", "Cümə axşamı", "Çərşənbə", "Çərşənbə axşamı", "Şənbə" ]

wide_context :: WeekdayWideContext
wide_context = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "воскресенье", "вторник", "понедельник", "пятница", "среда", "суббота", "четверг" ]

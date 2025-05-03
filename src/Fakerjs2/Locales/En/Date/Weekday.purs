module Fakerjs2.Locales.En.Date.Weekday (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (WeekdayAbbr, WeekdayWide)
import Unsafe.Coerce (unsafeCoerce)

abbr :: WeekdayAbbr
abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Fri", "Mon", "Sat", "Sun", "Thu", "Tue", "Wed" ]

wide :: WeekdayWide
wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Friday", "Monday", "Saturday", "Sunday", "Thursday", "Tuesday", "Wednesday" ]

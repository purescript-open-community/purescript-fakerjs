module Fakerjs2.Locales.Ro.Date.Weekday (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (WeekdayAbbr, WeekdayWide)
import Unsafe.Coerce (unsafeCoerce)

abbr :: WeekdayAbbr
abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Duminică", "Joi", "Luni", "Marți", "Miercuri", "Sâmbătă", "Vineri" ]

wide :: WeekdayWide
wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Duminică", "Joi", "Luni", "Marți", "Miercuri", "Sâmbătă", "Vineri" ]

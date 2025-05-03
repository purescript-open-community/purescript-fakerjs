module Fakerjs2.Locales.RoMd.Date.Weekday (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (WeekdayAbbr, WeekdayWide)
import Unsafe.Coerce (unsafeCoerce)

abbr :: WeekdayAbbr
abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Du", "Jo", "Lu", "Ma", "Mi", "Sâ", "Vi" ]

wide :: WeekdayWide
wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Duminică", "Joi", "Luni", "Marți", "Miercuri", "Sâmbătă", "Vineri" ]

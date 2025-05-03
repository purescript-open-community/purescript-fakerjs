module Fakerjs2.Locales.De.Date.Weekday (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (WeekdayAbbr, WeekdayWide)
import Unsafe.Coerce (unsafeCoerce)

abbr :: WeekdayAbbr
abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Di.", "Do.", "Fr.", "Mi.", "Mo.", "Sa.", "So." ]

wide :: WeekdayWide
wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Dienstag", "Donnerstag", "Freitag", "Mittwoch", "Montag", "Samstag", "Sonntag" ]

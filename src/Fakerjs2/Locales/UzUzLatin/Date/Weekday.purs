module Fakerjs2.Locales.UzUzLatin.Date.Weekday (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (WeekdayAbbr, WeekdayWide)
import Unsafe.Coerce (unsafeCoerce)

abbr :: WeekdayAbbr
abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Ch", "Du", "Ju", "Pa", "Se", "Sh", "Ya" ]

wide :: WeekdayWide
wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Chorshanba", "Dushanba", "Juma", "Payshanba", "Seshanba", "Shanba", "Yakshanba" ]

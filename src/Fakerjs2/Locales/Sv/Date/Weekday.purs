module Fakerjs2.Locales.Sv.Date.Weekday (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (WeekdayAbbr, WeekdayWide)
import Unsafe.Coerce (unsafeCoerce)

abbr :: WeekdayAbbr
abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "fre", "lör", "mån", "ons", "sön", "tis", "tor" ]

wide :: WeekdayWide
wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "fredag", "lördag", "måndag", "onsdag", "söndag", "tisdag", "torsdag" ]

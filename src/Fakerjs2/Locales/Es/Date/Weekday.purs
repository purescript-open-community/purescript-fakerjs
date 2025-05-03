module Fakerjs2.Locales.Es.Date.Weekday (abbr, abbr_context, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (WeekdayAbbr, WeekdayAbbrContext, WeekdayWide)
import Unsafe.Coerce (unsafeCoerce)

abbr :: WeekdayAbbr
abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "dom", "jue", "lun", "mar", "mié", "sáb", "vie" ]

abbr_context :: WeekdayAbbrContext
abbr_context = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "dom.", "juev.", "lun.", "mart.", "miérc.", "sáb.", "vier." ]

wide :: WeekdayWide
wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "domingo", "jueves", "lunes", "martes", "miércoles", "sábado", "viernes" ]

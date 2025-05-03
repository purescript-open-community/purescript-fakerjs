module Fakerjs2.Locales.Lv.Date.Weekday (abbr, abbr_context, wide, wide_context) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (WeekdayAbbr, WeekdayAbbrContext, WeekdayWide, WeekdayWideContext)
import Unsafe.Coerce (unsafeCoerce)

abbr :: WeekdayAbbr
abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Ct", "Ot", "Pk", "Pr", "Se", "Sv", "Tr" ]

abbr_context :: WeekdayAbbrContext
abbr_context = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "cet.", "otr.", "pk.", "pr.", "se.", "sv.", "tr." ]

wide :: WeekdayWide
wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Ceturtdiena", "Otrdiena", "Piektdiena", "Pirmdiena", "Sestdiena", "Svētdiena", "Trešdiena" ]

wide_context :: WeekdayWideContext
wide_context = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "ceturtdien", "otrdien", "piektdien", "pirmdien", "sestdien", "svētdien", "trešdien" ]

module Fakerjs2.Locales.Fr.Date.Weekday (abbr, abbr_context, wide, wide_context) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (WeekdayAbbr, WeekdayAbbrContext, WeekdayWide, WeekdayWideContext)
import Unsafe.Coerce (unsafeCoerce)

abbr :: WeekdayAbbr
abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Dim", "Jeu", "Lun", "Mar", "Mer", "Sam", "Ven" ]

abbr_context :: WeekdayAbbrContext
abbr_context = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "dim", "jeu", "lun", "mar", "mer", "sam", "ven" ]

wide :: WeekdayWide
wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Dimanche", "Jeudi", "Lundi", "Mardi", "Mercredi", "Samedi", "Vendredi" ]

wide_context :: WeekdayWideContext
wide_context = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "dimanche", "jeudi", "lundi", "mardi", "mercredi", "samedi", "vendredi" ]

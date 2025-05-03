module Fakerjs2.Locales.SrRsLatin.Date.Month (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (MonthAbbr, MonthWide)
import Unsafe.Coerce (unsafeCoerce)

abbr :: MonthAbbr
abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "apr", "avg", "dec", "feb", "jan", "jul", "jun", "maj", "mar", "nov", "okt", "sep" ]

wide :: MonthWide
wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "april"
  , "avgust"
  , "decembar"
  , "februar"
  , "januar"
  , "jul"
  , "jun"
  , "maj"
  , "mart"
  , "novembar"
  , "oktobar"
  , "septembar"
  ]

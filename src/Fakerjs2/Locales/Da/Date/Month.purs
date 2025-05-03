module Fakerjs2.Locales.Da.Date.Month (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (MonthAbbr, MonthWide)
import Unsafe.Coerce (unsafeCoerce)

abbr :: MonthAbbr
abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "apr.", "aug.", "dec.", "feb.", "jan.", "jul.", "jun.", "maj", "mar.", "nov.", "okt.", "sep." ]

wide :: MonthWide
wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "april"
  , "august"
  , "december"
  , "februar"
  , "januar"
  , "juli"
  , "juni"
  , "maj"
  , "marts"
  , "november"
  , "oktober"
  , "september"
  ]

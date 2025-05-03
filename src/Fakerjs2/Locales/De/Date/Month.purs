module Fakerjs2.Locales.De.Date.Month (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (MonthAbbr, MonthWide)
import Unsafe.Coerce (unsafeCoerce)

abbr :: MonthAbbr
abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Apr", "Aug", "Dez", "Feb", "Jan", "Jul", "Jun", "Mai", "Mrz", "Nov", "Okt", "Sep" ]

wide :: MonthWide
wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "April"
  , "August"
  , "Dezember"
  , "Februar"
  , "Januar"
  , "Juli"
  , "Juni"
  , "Mai"
  , "März"
  , "November"
  , "Oktober"
  , "September"
  ]

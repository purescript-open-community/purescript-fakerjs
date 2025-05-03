module Fakerjs2.Locales.Ko.Date.Month (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (MonthAbbr, MonthWide)
import Unsafe.Coerce (unsafeCoerce)

abbr :: MonthAbbr
abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "10월", "11월", "12월", "1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월" ]

wide :: MonthWide
wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "10월", "11월", "12월", "1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월" ]

module Fakerjs2.Locales.Hr.Date.Month (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (MonthAbbr, MonthWide)
import Unsafe.Coerce (unsafeCoerce)

abbr :: MonthAbbr
abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "kol", "lip", "lis", "ožu", "pro", "ruj", "sij", "srp", "stu", "svi", "tra", "vel" ]

wide :: MonthWide
wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "kolovoz"
  , "lipanj"
  , "listopad"
  , "ožujak"
  , "prosinac"
  , "rujan"
  , "siječanj"
  , "srpanj"
  , "studeni"
  , "svibanj"
  , "travanj"
  , "veljača"
  ]

module Fakerjs2.Locales.BnBd.Date.Month (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (MonthAbbr, MonthWide)
import Unsafe.Coerce (unsafeCoerce)

abbr :: MonthAbbr
abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "অক\x0009cdট"
  , "আগ"
  , "এপ\x0009cdর\x0009bf"
  , "জ\x0009beন\x0009c1"
  , "জ\x0009c1ন"
  , "জ\x0009c1ল\x0009be"
  , "ড\x0009bfস"
  , "নভ"
  , "ফ\x0009c7ব"
  , "ম\x0009beর\x0009cdচ"
  , "ম\x0009c7"
  , "স\x0009c7প"
  ]

wide :: MonthWide
wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "অক\x0009cdট\x0009cbবর"
  , "আগস\x0009cdট"
  , "এপ\x0009cdর\x0009bfল"
  , "জ\x0009beন\x0009c1য\x0009bc\x0009beর\x0009bf"
  , "জ\x0009c1ন"
  , "জ\x0009c1ল\x0009beই"
  , "ড\x0009bfস\x0009c7ম\x0009cdবর"
  , "নভ\x0009c7ম\x0009cdবর"
  , "ফ\x0009c7ব\x0009cdর\x0009c1য\x0009bc\x0009beর\x0009bf"
  , "ম\x0009beর\x0009cdচ"
  , "ম\x0009c7"
  , "স\x0009c7প\x0009cdট\x0009c7ম\x0009cdবর"
  ]

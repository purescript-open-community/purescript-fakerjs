module Fakerjs2.Locales.TaIn.Date.Weekday (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (WeekdayAbbr, WeekdayWide)
import Unsafe.Coerce (unsafeCoerce)

abbr :: WeekdayAbbr
abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "ச", "ச\x000bc6", "ஞ\x000bbe", "த\x000bbf", "ப\x000bc1", "வ\x000bbf", "வ\x000bc6" ]

wide :: WeekdayWide
wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "சன\x000bbf"
  , "ச\x000bc6வ\x000bcdவ\x000bbeய\x000bcd"
  , "ஞ\x000bbeய\x000bbfற\x000bc1"
  , "த\x000bbfங\x000bcdகள\x000bcd"
  , "ப\x000bc1தன\x000bcd"
  , "வ\x000bbfய\x000bbeழன\x000bcd"
  , "வ\x000bc6ள\x000bcdள\x000bbf"
  ]

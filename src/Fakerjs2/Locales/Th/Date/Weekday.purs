module Fakerjs2.Locales.Th.Date.Weekday (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (WeekdayAbbr, WeekdayWide)
import Unsafe.Coerce (unsafeCoerce)

abbr :: WeekdayAbbr
abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "จ.", "พ.", "พฤ.", "ศ.", "ส.", "อ.", "อา." ]

wide :: WeekdayWide
wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "ว\x000e31นจ\x000e31นทร\x000e4c"
  , "ว\x000e31นพฤห\x000e31สบด\x000e35"
  , "ว\x000e31นพ\x000e38ธ"
  , "ว\x000e31นศ\x000e38กร\x000e4c"
  , "ว\x000e31นอ\x000e31งคาร"
  , "ว\x000e31นอาท\x000e34ตย\x000e4c"
  , "ว\x000e31นเสาร\x000e4c"
  ]

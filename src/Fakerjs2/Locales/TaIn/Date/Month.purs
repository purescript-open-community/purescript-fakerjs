module Fakerjs2.Locales.TaIn.Date.Month (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (MonthAbbr, MonthWide)
import Unsafe.Coerce (unsafeCoerce)

abbr :: MonthAbbr
abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "ஆட\x000bbf"
  , "ஆன\x000bbf"
  , "ஆவ"
  , "ஐப\x000bcd"
  , "க\x000bbeர\x000bcd"
  , "ச\x000bbfத\x000bcd"
  , "த\x000bc8"
  , "பங\x000bcd"
  , "ப\x000bc1ர"
  , "ம\x000bbeச\x000bbf"
  , "ம\x000bbeர\x000bcd"
  , "வ\x000bc8க\x000bbe"
  ]

wide :: MonthWide
wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "ஆட\x000bbf"
  , "ஆன\x000bbf"
  , "ஆவண\x000bbf"
  , "ஐப\x000bcdபச\x000bbf"
  , "க\x000bbeர\x000bcdத\x000bcdத\x000bbfக\x000bc8"
  , "ச\x000bbfத\x000bcdத\x000bbfர\x000bc8"
  , "த\x000bc8"
  , "பங\x000bcdக\x000bc1ன\x000bbf"
  , "ப\x000bc1ரட\x000bcdட\x000bbeச\x000bbf"
  , "ம\x000bbeச\x000bbf"
  , "ம\x000bbeர\x000bcdகழ\x000bbf"
  , "வ\x000bc8க\x000bbeச\x000bbf"
  ]

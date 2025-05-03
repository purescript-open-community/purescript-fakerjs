module Fakerjs2.Locales.Th.Date.Month (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (MonthAbbr, MonthWide)
import Unsafe.Coerce (unsafeCoerce)

abbr :: MonthAbbr
abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "ก.ค."
  , "ก.พ."
  , "ก.ย."
  , "ต.ค."
  , "ธ.ค."
  , "พ.ค."
  , "พ.ย."
  , "ม.ค."
  , "ม\x000e34.ย."
  , "ม\x000e35.ค."
  , "ส.ค."
  , "เม.ย."
  ]

wide :: MonthWide
wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "กรกฎาคม"
  , "ก\x000e31นยายน"
  , "ก\x000e38มภาพ\x000e31นธ\x000e4c"
  , "ต\x000e38ลาคม"
  , "ธ\x000e31นวาคม"
  , "พฤศจ\x000e34กายน"
  , "พฤษภาคม"
  , "มกราคม"
  , "ม\x000e34ถ\x000e38นายน"
  , "ม\x000e35นาคม"
  , "ส\x000e34งหาคม"
  , "เมษายน"
  ]

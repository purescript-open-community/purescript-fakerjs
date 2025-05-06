module Fakerjs2.Locales.He.Commerce.ProductName (adjective, material, product) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

adjective = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "אינטליגנטי"
  , "ארגונומי"
  , "גנרית"
  , "טעים"
  , "כפרי"
  , "לא ממותג"
  , "מ\x0005b0זו\x0005bcק\x0005b8ק"
  , "מאוד יפה"
  , "מדהים"
  , "מורשה"
  , "מלוטש"
  , "מעשי"
  , "עבודת יד"
  , "פנטסטי"
  , "קטן"
  ]

material = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "בטון", "גומי", "גרניט", "כותנה", "מתכת", "עץ", "פלדה", "פלסטי", "צ\x0005b7ח", "קפוא", "רך" ]

product = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "אוטו"
  , "אופניים"
  , "בייקון"
  , "גבינה"
  , "דג"
  , "חולצה"
  , "טונה"
  , "כדור"
  , "כובע"
  , "כיסא"
  , "כפפות"
  , "מגבות"
  , "מחשב"
  , "מכנסיים"
  , "מקלדת"
  , "נעליים"
  , "נקניקיות"
  , "סבון"
  , "סלט"
  , "עוף"
  , "עכבר"
  , "פיצה"
  , "צ'יפס"
  , "שולחן"
  ]

module Fakerjs2.Locales.Ur.Date.Month (month) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Month)
import Unsafe.Coerce (unsafeCoerce)

month :: Month
month =
  { abbr: "null"
  , wide: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "اپریل"
      , "اکتوبر"
      , "اگست"
      , "جنوری"
      , "جولائ"
      , "جون"
      , "دسمبر"
      , "ستمبر"
      , "فروری"
      , "مئ"
      , "مارچ"
      , "نومبر"
      ]
  }

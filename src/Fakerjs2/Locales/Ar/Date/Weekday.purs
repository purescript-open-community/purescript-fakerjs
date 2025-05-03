module Fakerjs2.Locales.Ar.Date.Weekday (weekday) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Weekday)
import Unsafe.Coerce (unsafeCoerce)

weekday :: Weekday
weekday =
  { abbr: "null"
  , wide: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "الأح\x00064eد", "الأربعاء", "الإثنين", "الثلاثاء", "الجمعة", "الخميس", "السبت" ]
  }

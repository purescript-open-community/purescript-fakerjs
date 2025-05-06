module Fakerjs2.Locales.Ar.Date.Weekday (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Maybe (Maybe(..))
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

abbr = Nothing
wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "الأح\x00064eد", "الأربعاء", "الإثنين", "الثلاثاء", "الجمعة", "الخميس", "السبت" ]

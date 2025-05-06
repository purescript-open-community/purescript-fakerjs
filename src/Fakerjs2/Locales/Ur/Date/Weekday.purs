module Fakerjs2.Locales.Ur.Date.Weekday (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Maybe (Maybe(..))
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

abbr = Nothing
wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "اتور", "بدھ", "جمعرات", "جمعہ", "منگل", "پیر", "ہفتہ" ]

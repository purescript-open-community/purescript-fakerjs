module Fakerjs2.Locales.Fa.Date.Weekday (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Maybe (Maybe(..))
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

abbr = Just
  ( (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "ج", "د", "س", "ش", "پ", "چ", "ی" ]
  )

wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "جمعه", "دوشنبه", "سه شنبه", "شنبه", "پنجشنبه", "چهارشنبه", "یکشنبه" ]

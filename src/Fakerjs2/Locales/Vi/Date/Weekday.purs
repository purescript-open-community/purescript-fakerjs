module Fakerjs2.Locales.Vi.Date.Weekday (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Maybe (Maybe(..))
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

abbr = Just
  ( (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "CN", "T2", "T3", "T4", "T5", "T6", "T7" ]
  )

wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Chủ nhật", "Thứ ba", "Thứ bảy", "Thứ hai", "Thứ năm", "Thứ sáu", "Thứ tư" ]

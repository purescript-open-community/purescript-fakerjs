module Fakerjs2.Locales.ZhTw.Date.Month (month) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

month =
  { abbr: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "10月", "11月", "12月", "1月", "2月", "3月", "4月", "5月", "6月", "7月", "8月", "9月" ]
  , wide: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "10月", "11月", "12月", "1月", "2月", "3月", "4月", "5月", "6月", "7月", "8月", "9月" ]
  }

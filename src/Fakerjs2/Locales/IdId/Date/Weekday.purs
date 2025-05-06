module Fakerjs2.Locales.IdId.Date.Weekday (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Maybe (Maybe(..))
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

abbr = Just
  ( (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "Jum", "Kam", "Min", "Rab", "Sab", "Sel", "Sen" ]
  )

wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Jumat", "Kamis", "Minggu", "Rabu", "Sabtu", "Selasa", "Senin" ]

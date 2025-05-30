module Fakerjs2.Locales.He.Date.Weekday (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Maybe (Maybe(..))
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

abbr = Just
  ( (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "יום א׳", "יום ב׳", "יום ג׳", "יום ד׳", "יום ה׳", "יום ו׳", "שבת" ]
  )

wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "יום חמישי", "יום ראשון", "יום רביעי", "יום שישי", "יום שלישי", "יום שני", "שבת" ]

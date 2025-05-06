module Fakerjs2.Locales.CsCz.Date.Weekday (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Maybe (Maybe(..))
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

abbr = Just
  ( (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "Ne", "Po", "Pá", "So", "St", "Út", "čt" ]
  )

wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Neděle", "Pondělí", "Pátek", "Sobota", "Středa", "Úterý", "čtvrtek" ]

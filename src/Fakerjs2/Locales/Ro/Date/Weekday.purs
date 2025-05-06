module Fakerjs2.Locales.Ro.Date.Weekday (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Maybe (Maybe(..))
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

abbr = Just
  ( (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "Duminică", "Joi", "Luni", "Marți", "Miercuri", "Sâmbătă", "Vineri" ]
  )

wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Duminică", "Joi", "Luni", "Marți", "Miercuri", "Sâmbătă", "Vineri" ]

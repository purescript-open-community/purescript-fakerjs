module Fakerjs2.Locales.Lv.Date.Weekday (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Maybe (Maybe(..))
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

abbr = Just
  ( (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "Ct", "Ot", "Pk", "Pr", "Se", "Sv", "Tr" ]
  )

wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Ceturtdiena", "Otrdiena", "Piektdiena", "Pirmdiena", "Sestdiena", "Svētdiena", "Trešdiena" ]

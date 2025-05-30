module Fakerjs2.Locales.PtPt.Date.Weekday (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Maybe (Maybe(..))
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

abbr = Just
  ( (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "Dom", "Qua", "Qui", "Seg", "Sex", "Sáb", "Ter" ]
  )

wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Domingo", "Quarta", "Quinta", "Segunda", "Sexta", "Sábado", "Terça" ]

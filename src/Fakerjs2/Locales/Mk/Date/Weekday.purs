module Fakerjs2.Locales.Mk.Date.Weekday (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Maybe (Maybe(..))
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

abbr = Just
  ( (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "вто", "нед", "пет", "пон", "саб", "сре", "чет" ]
  )

wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "вторник", "недела", "петок", "понеделник", "сабота", "среда", "четврток" ]

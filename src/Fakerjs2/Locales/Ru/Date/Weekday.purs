module Fakerjs2.Locales.Ru.Date.Weekday (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Maybe (Maybe(..))
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

abbr = Just
  ( (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "Вс", "Вт", "Пн", "Пт", "Сб", "Ср", "Чт" ]
  )

wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Воскресенье", "Вторник", "Понедельник", "Пятница", "Среда", "Суббота", "Четверг" ]

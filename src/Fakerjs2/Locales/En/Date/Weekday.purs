module Fakerjs2.Locales.En.Date.Weekday (weekday) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Maybe (Maybe(..))
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

weekday =
  { abbr: Just
      ( (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
          [ "Fri", "Mon", "Sat", "Sun", "Thu", "Tue", "Wed" ]
      )
  , wide: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "Friday", "Monday", "Saturday", "Sunday", "Thursday", "Tuesday", "Wednesday" ]
  }

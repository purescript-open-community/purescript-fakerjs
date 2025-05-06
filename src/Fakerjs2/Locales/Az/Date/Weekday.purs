module Fakerjs2.Locales.Az.Date.Weekday (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Maybe (Maybe(..))
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

abbr = Just
  ( (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "BE", "Ba", "CA", "Cü", "ÇA", "Çə", "Şə" ]
  )

wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Bazar", "Bazar ertəsi", "Cümə", "Cümə axşamı", "Çərşənbə", "Çərşənbə axşamı", "Şənbə" ]

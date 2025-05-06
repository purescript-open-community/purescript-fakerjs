module Fakerjs2.Locales.Fr.Date.Weekday (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Maybe (Maybe(..))
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

abbr = Just
  ( (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "Dim", "Jeu", "Lun", "Mar", "Mer", "Sam", "Ven" ]
  )

wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Dimanche", "Jeudi", "Lundi", "Mardi", "Mercredi", "Samedi", "Vendredi" ]

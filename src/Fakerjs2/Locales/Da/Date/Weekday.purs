module Fakerjs2.Locales.Da.Date.Weekday (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Maybe (Maybe(..))
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

abbr = Just
  ( (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "fre.", "lør.", "man.", "ons.", "søn.", "tir.", "tor." ]
  )

wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "fredag", "lørdag", "mandag", "onsdag", "søndag", "tirsdag", "torsdag" ]

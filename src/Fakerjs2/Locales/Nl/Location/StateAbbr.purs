module Fakerjs2.Locales.Nl.Location.StateAbbr (state_abbr) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

state_abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "DR", "FL", "FR", "GE", "GR", "LI", "NB", "NH", "OV", "UT", "ZE", "ZH" ]

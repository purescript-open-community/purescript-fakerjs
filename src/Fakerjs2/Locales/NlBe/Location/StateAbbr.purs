module Fakerjs2.Locales.NlBe.Location.StateAbbr (state_abbr) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (StateAbbr)
import Unsafe.Coerce (unsafeCoerce)

state_abbr :: StateAbbr
state_abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "WVL", "OVL", "VBR", "ANT", "LIM", "BRU" ]

module Fakerjs2.Locales.DeAt.Location.StateAbbr (state_abbr) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

state_abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Bgld.", "Ktn.", "NÖ", "OÖ", "Sbg.", "Stmk.", "T", "Vbg.", "W" ]

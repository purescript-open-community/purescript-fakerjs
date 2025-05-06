module Fakerjs2.Locales.EnGb.Location.State (state) where

import Data.Array.NonEmpty (NonEmptyArray)
import Unsafe.Coerce (unsafeCoerce)

state = (unsafeCoerce :: Array String -> NonEmptyArray String)
  [ "England", "Northern Ireland", "Scotland", "Wales" ]

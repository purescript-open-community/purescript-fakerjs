module Fakerjs2.Locales.En.Location.Direction (direction) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

direction =
  { cardinal: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "North", "East", "South", "West" ]
  , cardinal_abbr: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "N", "E", "S", "W" ]
  , ordinal: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "Northeast", "Northwest", "Southeast", "Southwest" ]
  , ordinal_abbr: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "NE", "NW", "SE", "SW" ]
  }

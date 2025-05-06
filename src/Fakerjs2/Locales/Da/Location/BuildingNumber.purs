module Fakerjs2.Locales.Da.Location.BuildingNumber (building_number) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

building_number = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "#", "##", "###", "##A", "##B" ]

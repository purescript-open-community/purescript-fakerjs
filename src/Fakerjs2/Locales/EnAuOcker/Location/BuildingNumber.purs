module Fakerjs2.Locales.EnAuOcker.Location.BuildingNumber (building_number) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (BuildingNumber)
import Unsafe.Coerce (unsafeCoerce)

building_number :: BuildingNumber
building_number = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "####", "###", "##" ]

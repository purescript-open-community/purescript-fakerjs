module Fakerjs2.Locales.Fr.Location.StreetPrefix (street_prefix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

street_prefix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Allée", "Voie", "Rue", "Avenue", "Boulevard", "Quai", "Passage", "Impasse", "Place" ]

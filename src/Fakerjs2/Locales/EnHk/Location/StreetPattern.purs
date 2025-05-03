module Fakerjs2.Locales.EnHk.Location.StreetPattern (street_pattern) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (StreetPattern)
import Unsafe.Coerce (unsafeCoerce)

street_pattern :: StreetPattern
street_pattern = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "{{location.street_english_part}} {{location.street_suffix}}"
  , "{{location.street_cantonese_part}} {{location.street_cantonese_part}} {{location.street_suffix}}"
  ]

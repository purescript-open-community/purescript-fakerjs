module Fakerjs2.Locales.Ja.Location.StreetPattern (street_pattern) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (StreetPattern)
import Unsafe.Coerce (unsafeCoerce)

street_pattern :: StreetPattern
street_pattern = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "{{number.int({\"max\": 9, \"min\": 1})}}丁目{{number.int({\"max\": 9, \"min\": 1})}}番{{number.int({\"max\": 9, \"min\": 1})}}号"
  ]

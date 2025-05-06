module Fakerjs2.Locales.UzUzLatin.Location.StreetSuffix (street_suffix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

street_suffix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "bulvari", "daxasi", "ko'chasi", "qirg'oqi", "qishlog'i", "xiyoboni" ]

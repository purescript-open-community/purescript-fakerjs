module Fakerjs2.Locales.EnHk.PhoneNumber.Format.International (international) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (International)
import Unsafe.Coerce (unsafeCoerce)

international :: International
international = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "+8522#######"
  , "+8523#######"
  , "+8524#######"
  , "+8525#######"
  , "+8526#######"
  , "+8527#######"
  , "+8529#######"
  ]

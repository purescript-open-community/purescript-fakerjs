module Fakerjs2.Locales.Eo.Location.SecondaryAddress (secondary_address) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

secondary_address = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "apartamento ###", "ĉambro ###" ]

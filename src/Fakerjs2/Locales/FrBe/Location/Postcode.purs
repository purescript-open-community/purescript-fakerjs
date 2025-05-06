module Fakerjs2.Locales.FrBe.Location.Postcode (postcode) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

postcode = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "####" ]

module Fakerjs2.Locales.PtBr.Location.Postcode (postcode) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

postcode = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "#####-###" ]

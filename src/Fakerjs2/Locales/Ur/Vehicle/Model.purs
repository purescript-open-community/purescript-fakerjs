module Fakerjs2.Locales.Ur.Vehicle.Model (model) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

model = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "اکورڈ", "سوک", "کرولا" ]

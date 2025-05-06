module Fakerjs2.Locales.Ur.Vehicle.Type (type_) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

type_ = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "سواری", "ہیچ بیک" ]

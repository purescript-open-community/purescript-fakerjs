module Fakerjs2.Locales.Eo.Person.Sex (sex) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

sex = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "vira", "ina" ]

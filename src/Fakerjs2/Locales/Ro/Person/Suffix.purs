module Fakerjs2.Locales.Ro.Person.Suffix (suffix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

suffix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "Jr.", "Sr." ]

module Fakerjs2.Locales.Mk.Person.Prefix (female, generic, male) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

female = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "г-ца", "г-ѓа", "д-р", "м-р" ]

generic = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "г-дин", "г-ца", "г-ѓа", "д-р", "м-р" ]

male = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "г-дин", "д-р", "м-р" ]

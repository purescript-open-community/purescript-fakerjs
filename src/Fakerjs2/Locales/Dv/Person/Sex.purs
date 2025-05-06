module Fakerjs2.Locales.Dv.Person.Sex (sex) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

sex = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "އ\x0007a6ނ\x0007b0ހ\x0007acނ\x0007b0", "ފ\x0007a8ރ\x0007a8ހ\x0007acނ\x0007b0" ]

module Fakerjs2.Locales.Th.Person.Sex (sex) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

sex = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "ชาย", "หญ\x000e34ง" ]

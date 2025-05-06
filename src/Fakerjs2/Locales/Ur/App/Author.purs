module Fakerjs2.Locales.Ur.App.Author (author) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

author = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "{{person.name}}", "{{company.name}}" ]

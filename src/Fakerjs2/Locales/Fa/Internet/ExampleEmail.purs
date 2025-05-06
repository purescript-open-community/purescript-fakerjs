module Fakerjs2.Locales.Fa.Internet.ExampleEmail (example_email) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

example_email = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "example.org", "example.com", "example.net" ]

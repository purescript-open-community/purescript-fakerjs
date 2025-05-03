module Fakerjs2.Locales.En.Internet.ExampleEmail (example_email) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (ExampleEmail)
import Unsafe.Coerce (unsafeCoerce)

example_email :: ExampleEmail
example_email = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "example.org", "example.com", "example.net" ]

module Fakerjs2.Locales.En.App.Author (author) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Author)
import Unsafe.Coerce (unsafeCoerce)

author :: Author
author = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "{{person.name}}", "{{company.name}}" ]

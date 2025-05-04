module Fakerjs2.Locales.ZhCn.Person.LastNamePattern (last_name_pattern) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Weighted)
import Unsafe.Coerce (unsafeCoerce)

last_name_pattern =
  { generic: (unsafeCoerce :: Array (Weighted String) -> NonEmptyArray (Weighted NonEmptyString))
      [ { value: "{{person.last_name.generic}}", weight: 1 } ]
  }

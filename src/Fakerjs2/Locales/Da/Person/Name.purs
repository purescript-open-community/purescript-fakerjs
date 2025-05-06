module Fakerjs2.Locales.Da.Person.Name (name) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Weighted)
import Unsafe.Coerce (unsafeCoerce)

name = (unsafeCoerce :: Array (Weighted String) -> NonEmptyArray (Weighted NonEmptyString))
  [ { value: "{{person.firstName}} {{person.lastName}}", weight: 50 }
  , { value: "{{person.firstName}} {{person.middleName}} {{person.lastName}}", weight: 50 }
  ]

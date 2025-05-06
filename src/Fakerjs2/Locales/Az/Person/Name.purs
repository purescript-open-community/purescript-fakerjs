module Fakerjs2.Locales.Az.Person.Name (name) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Weighted)
import Unsafe.Coerce (unsafeCoerce)

name = (unsafeCoerce :: Array (Weighted String) -> NonEmptyArray (Weighted NonEmptyString))
  [ { value: "{{person.firstName}}", weight: 1 }
  , { value: "{{person.lastName}} {{person.firstName}}", weight: 1 }
  , { value: "{{person.firstName}} {{person.lastName}}", weight: 1 }
  ]

module Fakerjs2.Locales.Sv.Person.Name (name) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Weighted)
import Unsafe.Coerce (unsafeCoerce)

name = (unsafeCoerce :: Array (Weighted String) -> NonEmptyArray (Weighted NonEmptyString))
  [ { value: "{{person.prefix}} {{person.firstName}} {{person.lastName}}", weight: 1 }
  , { value: "{{person.firstName}} {{person.lastName}} {{person.suffix}}", weight: 1 }
  , { value: "{{person.firstName}} {{person.lastName}}", weight: 9 }
  ]

module Fakerjs2.Locales.En.Person.Name (name) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Weighted)
import Unsafe.Coerce (unsafeCoerce)

name = (unsafeCoerce :: Array (Weighted String) -> NonEmptyArray (Weighted NonEmptyString))
  [ { value: "{{person.firstName}} {{person.lastName}}", weight: 49 }
  , { value: "{{person.prefix}} {{person.firstName}} {{person.lastName}}", weight: 7 }
  , { value: "{{person.firstName}} {{person.lastName}} {{person.suffix}}", weight: 7 }
  , { value: "{{person.prefix}} {{person.firstName}} {{person.lastName}} {{person.suffix}}"
    , weight: 1
    }
  ]

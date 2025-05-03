module Fakerjs2.Locales.En.Person.Name (name) where

import Data.String.NonEmpty (unsafeFromString)
import Fakerjs2.Types (Name)

name :: Name
name =
  [ { value: unsafeFromString "{{person.firstName}} {{person.lastName}}", weight: 49 }
  , { value: unsafeFromString "{{person.prefix}} {{person.firstName}} {{person.lastName}}"
    , weight: 7
    }
  , { value: unsafeFromString "{{person.firstName}} {{person.lastName}} {{person.suffix}}"
    , weight: 7
    }
  , { value: unsafeFromString
        "{{person.prefix}} {{person.firstName}} {{person.lastName}} {{person.suffix}}"
    , weight: 1
    }
  ]

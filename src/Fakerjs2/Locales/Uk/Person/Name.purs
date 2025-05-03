module Fakerjs2.Locales.Uk.Person.Name (name) where

import Data.String.NonEmpty (unsafeFromString)
import Fakerjs2.Types (Name)

name :: Name
name =
  [ { value: unsafeFromString "{{person.firstName}} {{person.lastName}}", weight: 1 }
  , { value: unsafeFromString "{{person.lastName}} {{person.firstName}}", weight: 1 }
  , { value: unsafeFromString "{{person.firstName}} {{person.middleName}} {{person.lastName}}"
    , weight: 1
    }
  , { value: unsafeFromString "{{person.lastName}} {{person.firstName}} {{person.middleName}}"
    , weight: 1
    }
  ]

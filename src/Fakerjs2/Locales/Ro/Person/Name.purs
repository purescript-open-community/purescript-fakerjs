module Fakerjs2.Locales.Ro.Person.Name (name) where

import Data.String.NonEmpty (unsafeFromString)
import Fakerjs2.Types (Name)

name :: Name
name =
  [ { value: unsafeFromString "{{person.firstName}} {{person.lastName}}", weight: 8 }
  , { value: unsafeFromString "{{person.lastName}} {{person.firstName}}", weight: 1 }
  , { value: unsafeFromString "{{person.prefix}} {{person.firstName}} {{person.lastName}}"
    , weight: 1
    }
  ]

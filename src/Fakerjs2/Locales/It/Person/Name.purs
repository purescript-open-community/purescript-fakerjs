module Fakerjs2.Locales.It.Person.Name (name) where

import Data.String.NonEmpty (unsafeFromString)
import Fakerjs2.Types (Name)

name :: Name
name =
  [ { value: unsafeFromString "{{person.prefix}} {{person.firstName}} {{person.lastName}}"
    , weight: 1
    }
  , { value: unsafeFromString "{{person.firstName}} {{person.lastName}}", weight: 9 }
  ]

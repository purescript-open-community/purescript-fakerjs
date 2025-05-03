module Fakerjs2.Locales.Hu.Person.Name (name) where

import Data.String.NonEmpty (unsafeFromString)
import Fakerjs2.Types (Name)

name :: Name
name =
  [ { value: unsafeFromString "{{person.prefix}} {{person.lastName}} {{person.firstName}}"
    , weight: 1
    }
  , { value: unsafeFromString "{{person.lastName}} {{person.firstName}}", weight: 9 }
  ]

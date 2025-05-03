module Fakerjs2.Locales.ZhTw.Person.Name (name) where

import Data.String.NonEmpty (unsafeFromString)
import Fakerjs2.Types (Name)

name :: Name
name = [ { value: unsafeFromString "{{person.lastName}}{{person.firstName}}", weight: 1 } ]

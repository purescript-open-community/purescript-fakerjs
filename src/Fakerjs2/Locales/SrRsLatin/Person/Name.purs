module Fakerjs2.Locales.SrRsLatin.Person.Name (name) where

import Data.String.NonEmpty (unsafeFromString)
import Fakerjs2.Types (Name)

name :: Name
name = [ { value: unsafeFromString "{{person.firstName}} {{person.lastName}}", weight: 1 } ]

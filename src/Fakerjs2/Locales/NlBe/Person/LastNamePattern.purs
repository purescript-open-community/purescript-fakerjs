module Fakerjs2.Locales.NlBe.Person.LastNamePattern (generic) where

import Data.String.NonEmpty (unsafeFromString)
import Fakerjs2.Types (LastNamePatternGeneric)

generic :: LastNamePatternGeneric
generic = [ { value: unsafeFromString "{{person.last_name.generic}}", weight: 1 } ]

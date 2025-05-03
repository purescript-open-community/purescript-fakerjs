module Fakerjs2.Locales.Sv.Person.LastNamePattern (generic) where

import Data.String.NonEmpty (unsafeFromString)
import Fakerjs2.Types (LastNamePatternGeneric)

generic :: LastNamePatternGeneric
generic =
  [ { value: unsafeFromString "{{person.last_name.generic}}", weight: 8 }
  , { value: unsafeFromString "{{person.last_name.generic}} {{person.last_name.generic}}"
    , weight: 2
    }
  ]

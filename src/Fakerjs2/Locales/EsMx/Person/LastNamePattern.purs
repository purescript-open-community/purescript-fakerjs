module Fakerjs2.Locales.EsMx.Person.LastNamePattern (generic) where

import Data.String.NonEmpty (unsafeFromString)
import Fakerjs2.Types (LastNamePatternGeneric)

generic :: LastNamePatternGeneric
generic =
  [ { value: unsafeFromString "{{person.last_name.generic}} {{person.last_name.generic}}"
    , weight: 5
    }
  , { value: unsafeFromString "{{person.last_name.generic}} de {{person.last_name.generic}}"
    , weight: 1
    }
  ]

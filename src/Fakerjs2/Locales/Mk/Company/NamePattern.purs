module Fakerjs2.Locales.Mk.Company.NamePattern (name_pattern) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (NamePattern)
import Unsafe.Coerce (unsafeCoerce)

name_pattern :: NamePattern
name_pattern = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "{{location.city_name}} {{company.legal_entity_type}}"
  , "{{person.last_name.generic}} {{company.legal_entity_type}}"
  , "{{person.last_name.generic}}, {{person.last_name.generic}} и {{person.last_name.generic}}"
  ]

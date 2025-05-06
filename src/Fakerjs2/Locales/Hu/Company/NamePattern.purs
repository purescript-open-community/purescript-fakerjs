module Fakerjs2.Locales.Hu.Company.NamePattern (name_pattern) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

name_pattern = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "{{person.last_name.generic}} 2000 {{company.legal_entity_type}}"
  , "{{person.last_name.generic}} {{company.legal_entity_type}}"
  , "{{person.last_name.generic}} és Tsa. {{company.legal_entity_type}}"
  , "{{person.last_name.generic}} és {{person.last_name.generic}} {{company.legal_entity_type}}"
  ]

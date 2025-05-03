module Fakerjs2.Locales.Uk.Company.NamePattern (name_pattern) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (NamePattern)
import Unsafe.Coerce (unsafeCoerce)

name_pattern :: NamePattern
name_pattern = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "{{company.legal_entity_type}} {{company.category}}{{company.category}}"
  , "{{company.legal_entity_type}} {{company.category}}{{company.category}}{{company.category}}"
  , "{{company.legal_entity_type}} {{location.city_name}}{{company.category}}"
  , "{{company.legal_entity_type}} {{location.city_name}}{{company.category}}{{company.category}}"
  , "{{company.legal_entity_type}} {{location.city_name}}{{company.category}}{{company.category}}{{company.category}}"
  , "{{company.legal_entity_type}} {{person.first_name.female}}"
  , "{{company.legal_entity_type}} {{person.first_name.male}}"
  , "{{company.legal_entity_type}} {{person.last_name.male}}"
  ]

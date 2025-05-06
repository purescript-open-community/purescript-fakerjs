module Fakerjs2.Locales.Az.Company.NamePattern (name_pattern) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

name_pattern = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "{{company.legal_entity_type}} {{person.first_name.female}}"
  , "{{company.legal_entity_type}} {{person.first_name.male}}"
  , "{{company.legal_entity_type}} {{person.last_name.male}}"
  ]

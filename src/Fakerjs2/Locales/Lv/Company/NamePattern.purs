module Fakerjs2.Locales.Lv.Company.NamePattern (name_pattern) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (NamePattern)
import Unsafe.Coerce (unsafeCoerce)

name_pattern :: NamePattern
name_pattern = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "{{company.prefix}} {{person.last_name.female}} {{company.legal_entity_type}}"
  , "{{company.prefix}} {{person.last_name.male}}"
  , "{{company.prefix}} {{person.last_name.male}} {{company.legal_entity_type}}"
  , "{{person.last_name.male}} un {{person.last_name.male}}"
  , "{{person.last_name.male}}, {{person.last_name.male}} un {{person.last_name.male}}"
  ]

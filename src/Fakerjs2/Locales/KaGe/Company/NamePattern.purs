module Fakerjs2.Locales.KaGe.Company.NamePattern (name_pattern) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

name_pattern = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "{{company.prefix}} {{person.first_name.generic}}"
  , "{{company.prefix}} {{person.first_name.generic}} {{company.legal_entity_type}}"
  , "{{company.prefix}} {{person.last_name.generic}}"
  , "{{company.prefix}} {{person.last_name.generic}} {{company.legal_entity_type}}"
  , "{{company.prefix}} {{person.last_name.generic}}-{{person.last_name.generic}}"
  ]

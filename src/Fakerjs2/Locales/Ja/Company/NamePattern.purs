module Fakerjs2.Locales.Ja.Company.NamePattern (name_pattern) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (NamePattern)
import Unsafe.Coerce (unsafeCoerce)

name_pattern :: NamePattern
name_pattern = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "{{company.legal_entity_type}}{{person.last_name.generic}}{{company.category}}"
  , "{{person.last_name.generic}}{{company.category}}{{company.legal_entity_type}}"
  ]

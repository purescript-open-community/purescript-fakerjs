module Fakerjs2.Locales.CsCz.Company.NamePattern (name_pattern) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (NamePattern)
import Unsafe.Coerce (unsafeCoerce)

name_pattern :: NamePattern
name_pattern = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "{{person.last_name.generic}} {{company.legal_entity_type}}"
  , "{{person.last_name.male}} a {{person.last_name.male}} {{company.legal_entity_type}}"
  ]

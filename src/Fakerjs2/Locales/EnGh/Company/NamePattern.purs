module Fakerjs2.Locales.EnGh.Company.NamePattern (name_pattern) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

name_pattern = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "{{person.last_name.generic}} and {{person.last_name.generic}}"
  , "{{person.last_name.generic}} {{company.legal_entity_type}}"
  ]

module Fakerjs2.Locales.Da.Company.NamePattern (name_pattern) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

name_pattern = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "{{company.company_name}}"
  , "{{person.last_name.generic}} {{commerce.department}} {{company.legal_entity_type}}"
  ]

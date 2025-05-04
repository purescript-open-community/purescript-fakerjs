module Fakerjs2.Locales.ZhCn.Company.NamePattern (name_pattern) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

name_pattern = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "{{location.city}}{{person.first_name.generic}}{{company.category}}{{company.legal_entity_type}}"
  , "{{location.state}}{{person.first_name.generic}}{{company.category}}{{company.legal_entity_type}}"
  ]

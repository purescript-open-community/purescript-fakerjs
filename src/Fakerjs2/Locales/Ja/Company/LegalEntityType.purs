module Fakerjs2.Locales.Ja.Company.LegalEntityType (legal_entity_type) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (LegalEntityType)
import Unsafe.Coerce (unsafeCoerce)

legal_entity_type :: LegalEntityType
legal_entity_type = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "合同会社", "合名会社", "合資会社", "有限会社", "株式会社" ]

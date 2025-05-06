module Fakerjs2.Locales.PtBr.Company.LegalEntityType (legal_entity_type) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

legal_entity_type = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Comércio", "EIRELI", "LTDA", "S.A.", "e Associados" ]

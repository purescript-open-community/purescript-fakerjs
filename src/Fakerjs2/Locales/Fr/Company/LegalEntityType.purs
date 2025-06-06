module Fakerjs2.Locales.Fr.Company.LegalEntityType (legal_entity_type) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

legal_entity_type = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "EI", "EURL", "GIE", "SA", "SARL", "SAS", "SASU", "SCA", "SCOP", "SCS", "SEM", "SNC" ]

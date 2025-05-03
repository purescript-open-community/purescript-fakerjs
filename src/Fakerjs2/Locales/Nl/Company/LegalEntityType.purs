module Fakerjs2.Locales.Nl.Company.LegalEntityType (legal_entity_type) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (LegalEntityType)
import Unsafe.Coerce (unsafeCoerce)

legal_entity_type :: LegalEntityType
legal_entity_type = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "BV", "Bedrijf", "Combinatie", "Groep", "NV", "V.O.F.", "en Zonen" ]

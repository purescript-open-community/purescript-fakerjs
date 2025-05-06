module Fakerjs2.Locales.Sv.Company.LegalEntityType (legal_entity_type) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

legal_entity_type = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "AB", "Aktiebolag", "Group", "Gruppen", "HB", "Investment", "Kommanditbolag" ]

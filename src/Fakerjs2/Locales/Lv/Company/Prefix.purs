module Fakerjs2.Locales.Lv.Company.Prefix (prefix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

prefix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "AS", "Bezp.Org.", "Biedrība", "Firma", "IU", "SIA" ]

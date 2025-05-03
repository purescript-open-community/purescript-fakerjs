module Fakerjs2.Locales.IdId.Company.Prefix (prefix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Prefix)
import Unsafe.Coerce (unsafeCoerce)

prefix :: Prefix
prefix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "CV", "Fa", "KKB", "PD", "PT", "Perum", "UD", "Yayasan" ]

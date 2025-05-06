module Fakerjs2.Locales.Vi.Company.Prefix (prefix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

prefix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Chi nhánh", "Cty", "Cty TNHH", "Công ty", "Cửa hàng", "Trung tâm" ]

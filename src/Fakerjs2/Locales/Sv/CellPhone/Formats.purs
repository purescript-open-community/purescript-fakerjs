module Fakerjs2.Locales.Sv.CellPhone.Formats (formats) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

formats = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "{{cell_phone.common_cell_prefix}}-###-####" ]

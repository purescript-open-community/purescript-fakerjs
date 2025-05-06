module Fakerjs2.Locales.Ar.CellPhone.Formats (formats) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

formats = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "###-###-####", "(###) ###-####", "1-###-###-####", "###.###.####" ]

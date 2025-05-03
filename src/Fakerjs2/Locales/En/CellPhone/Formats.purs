module Fakerjs2.Locales.En.CellPhone.Formats (formats) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Formats)
import Unsafe.Coerce (unsafeCoerce)

formats :: Formats
formats = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "###-###-####", "(###) ###-####", "1-###-###-####", "###.###.####" ]

module Fakerjs2.Locales.DeAt.CellPhone.Formats (formats) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

formats = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "+43-6##-#######", "06##-########", "+436#########", "06##########" ]

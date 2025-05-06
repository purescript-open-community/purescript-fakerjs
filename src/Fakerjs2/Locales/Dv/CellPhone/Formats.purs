module Fakerjs2.Locales.Dv.CellPhone.Formats (formats) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

formats = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "7######", "9######", "+9607######", "+9609######", "+960 7######", "+960 9######" ]

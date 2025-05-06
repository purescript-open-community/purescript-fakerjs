module Fakerjs2.Locales.AfZa.CellPhone.Formats (formats) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

formats = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "082 ### ####", "084 ### ####", "083 ### ####", "065 ### ####", "082#######", "082 #######" ]

module Fakerjs2.Locales.EnIe.CellPhone.Formats (formats) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

formats = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "082 ### ####", "083 ### ####", "085 ### ####", "086 ### ####", "087 ### ####", "089 ### ####" ]

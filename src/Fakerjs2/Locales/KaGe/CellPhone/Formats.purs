module Fakerjs2.Locales.KaGe.CellPhone.Formats (formats) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

formats = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "(+995 32) 2-##-##-##"
  , "032-2-##-##-##"
  , "032-2-######"
  , "032-2-###-###"
  , "032 2 ## ## ##"
  , "032 2 ######"
  , "2 ## ## ##"
  , "2######"
  , "2 ### ###"
  ]

module Fakerjs2.Locales.Pl.CellPhone.Formats (formats) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

formats = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "50#-###-###"
  , "51#-###-###"
  , "53#-###-###"
  , "57#-###-###"
  , "60#-###-###"
  , "66#-###-###"
  , "69#-###-###"
  , "72#-###-###"
  , "73#-###-###"
  , "78#-###-###"
  , "79#-###-###"
  , "88#-###-###"
  ]

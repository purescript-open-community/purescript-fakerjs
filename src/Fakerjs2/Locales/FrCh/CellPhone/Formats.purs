module Fakerjs2.Locales.FrCh.CellPhone.Formats (formats) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Formats)
import Unsafe.Coerce (unsafeCoerce)

formats :: Formats
formats = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "076 ### ## ##"
  , "079 ### ## ##"
  , "078 ### ## ##"
  , "+41 76 ### ## ##"
  , "+41 78 ### ## ##"
  , "+41 79 ### ## ##"
  , "0041 76 ### ## ##"
  , "0041 78 ### ## ##"
  , "0041 79 ### ## ##"
  ]

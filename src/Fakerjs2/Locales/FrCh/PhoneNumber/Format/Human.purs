module Fakerjs2.Locales.FrCh.PhoneNumber.Format.Human (human) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Human)
import Unsafe.Coerce (unsafeCoerce)

human :: Human
human = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "0800 ### ###"
  , "0800 ## ## ##"
  , "0## ### ## ##"
  , "+41 ## ### ## ##"
  , "0900 ### ###"
  , "076 ### ## ##"
  , "079 ### ## ##"
  , "078 ### ## ##"
  , "+41 76 ### ## ##"
  , "+41 78 ### ## ##"
  , "+41 79 ### ## ##"
  , "0041 76 ### ## ##"
  , "0041 78 ### ## ##"
  , "0041 79 ### ## ##"
  ]

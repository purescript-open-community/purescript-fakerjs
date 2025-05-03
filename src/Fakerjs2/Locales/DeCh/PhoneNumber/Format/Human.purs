module Fakerjs2.Locales.DeCh.PhoneNumber.Format.Human (human) where

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
  , "+4178 ### ## ##"
  , "0041 79 ### ## ##"
  ]

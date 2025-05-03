module Fakerjs2.Locales.FrCh.PhoneNumber.Format.National (national) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (National)
import Unsafe.Coerce (unsafeCoerce)

national :: National
national = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "0800 ### ###"
  , "0## ### ## ##"
  , "0900 ### ###"
  , "076 ### ## ##"
  , "079 ### ## ##"
  , "078 ### ## ##"
  ]

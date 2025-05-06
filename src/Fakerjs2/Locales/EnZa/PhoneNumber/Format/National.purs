module Fakerjs2.Locales.EnZa.PhoneNumber.Format.National (national) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

national = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "0## ### ####"
  , "1#########"
  , "2#########"
  , "3#########"
  , "4#########"
  , "5#########"
  , "080 0## ####"
  , "0860 ### ###"
  ]

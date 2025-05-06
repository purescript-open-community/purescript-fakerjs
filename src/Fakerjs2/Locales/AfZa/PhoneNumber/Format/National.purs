module Fakerjs2.Locales.AfZa.PhoneNumber.Format.National (national) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

national = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "1#########"
  , "2#########"
  , "3#########"
  , "4#########"
  , "5#########"
  , "080 0## ####"
  , "0860 ### ###"
  ]

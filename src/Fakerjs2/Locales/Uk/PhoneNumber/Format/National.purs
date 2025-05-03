module Fakerjs2.Locales.Uk.PhoneNumber.Format.National (national) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (National)
import Unsafe.Coerce (unsafeCoerce)

national :: National
national = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "044 ### ####"
  , "050 ### ####"
  , "063 ### ####"
  , "066 ### ####"
  , "073 ### ####"
  , "091 ### ####"
  , "092 ### ####"
  , "093 ### ####"
  , "094 ### ####"
  , "095 ### ####"
  , "096 ### ####"
  , "097 ### ####"
  , "098 ### ####"
  , "099 ### ####"
  ]

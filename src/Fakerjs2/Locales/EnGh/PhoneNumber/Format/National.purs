module Fakerjs2.Locales.EnGh.PhoneNumber.Format.National (national) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (National)
import Unsafe.Coerce (unsafeCoerce)

national :: National
national = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "020 ### ####"
  , "023 ### ####"
  , "024 ### ####"
  , "026 ### ####"
  , "027 ### ####"
  , "028 ### ####"
  , "050 ### ####"
  , "053 ### ####"
  , "054 ### ####"
  , "055 ### ####"
  , "056 ### ####"
  , "057 ### ####"
  , "058 ### ####"
  ]

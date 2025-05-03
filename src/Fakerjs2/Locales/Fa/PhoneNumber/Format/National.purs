module Fakerjs2.Locales.Fa.PhoneNumber.Format.National (national) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (National)
import Unsafe.Coerce (unsafeCoerce)

national :: National
national = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "021 #### ####"
  , "031 #### ####"
  , "041 #### ####"
  , "045 #### ####"
  , "061 #### ####"
  , "051 #### ####"
  , "058 #### ####"
  , "028 #### ####"
  , "026 #### ####"
  , "044 #### ####"
  , "024 #### ####"
  , "023 #### ####"
  , "076 #### ####"
  ]

module Fakerjs2.Locales.DeAt.PhoneNumber.Format.Human (human) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

human = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "01 #######"
  , "01#######"
  , "+43-1-#######"
  , "+431#######"
  , "0#### ####"
  , "0#########"
  , "+43-####-####"
  , "+43 ########"
  ]

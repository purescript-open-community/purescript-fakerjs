module Fakerjs2.Locales.EnGb.PhoneNumber.Format.National (national) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

national = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "01### ######"
  , "01#1 ### ####"
  , "011# ### ####"
  , "02# #### ####"
  , "03## ### ####"
  , "055 #### ####"
  , "056 #### ####"
  , "0800 ### ####"
  , "08## ### ####"
  , "09## ### ####"
  , "016977 ####"
  , "01### #####"
  , "500######"
  , "0800 ######"
  ]

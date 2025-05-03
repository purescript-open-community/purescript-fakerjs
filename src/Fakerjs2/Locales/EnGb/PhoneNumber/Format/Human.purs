module Fakerjs2.Locales.EnGb.PhoneNumber.Format.Human (human) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Human)
import Unsafe.Coerce (unsafeCoerce)

human :: Human
human = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "01#### #####"
  , "01### ######"
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
  , "0500 ######"
  , "0800 ######"
  ]

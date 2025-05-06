module Fakerjs2.Locales.Mk.PhoneNumber.Format.Human (human) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

human = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "02 ### ####"
  , "03# ### ###"
  , "04# ### ###"
  , "+389 2 ### ####"
  , "+389 3# ### ###"
  , "+389 4# ### ###"
  , "00389 2 ### ####"
  , "00389 3# ### ###"
  , "00389 4# ### ###"
  ]

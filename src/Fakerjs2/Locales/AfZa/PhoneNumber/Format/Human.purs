module Fakerjs2.Locales.AfZa.PhoneNumber.Format.Human (human) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Human)
import Unsafe.Coerce (unsafeCoerce)

human :: Human
human = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "01# ### #####"
  , "02# ### #####"
  , "03# ### #####"
  , "04# ### #####"
  , "05# ### #####"
  , "0800 ### ###"
  , "0860 ### ###"
  , "01#########"
  , "01# ########"
  ]

module Fakerjs2.Locales.EnAu.PhoneNumber.Format.Human (human) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

human = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "0# #### ####", "+61 # #### ####", "04## ### ###", "+61 4## ### ###" ]

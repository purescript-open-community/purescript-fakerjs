module Fakerjs2.Locales.Th.PhoneNumber.Format.National (national) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

national = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "06# ### ####", "08# ### ####", "09# ### ####", "02 ### ####", "05! ### ###" ]

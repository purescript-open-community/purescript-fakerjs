module Fakerjs2.Locales.SrRsLatin.PhoneNumber.Format.Human (human) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Human)
import Unsafe.Coerce (unsafeCoerce)

human :: Human
human = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "### ###", "### ### ####", "06# ### ## ##", "+381## ### ## ##", "00381 ## ### ###" ]

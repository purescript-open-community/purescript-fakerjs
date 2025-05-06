module Fakerjs2.Locales.PtPt.PhoneNumber.Format.National (national) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

national = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "2## ### ###", "91# ### ###", "92# ### ###", "93# ### ###", "96# ### ###" ]

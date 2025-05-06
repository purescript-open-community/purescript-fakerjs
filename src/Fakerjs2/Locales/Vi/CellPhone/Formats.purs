module Fakerjs2.Locales.Vi.CellPhone.Formats (formats) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

formats = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "03# ### ####", "05# ### ####", "07# ### ####", "08# ### ####", "09# ### ####" ]

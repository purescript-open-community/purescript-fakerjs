module Fakerjs2.Locales.Ro.Internet.FreeEmail (free_email) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (FreeEmail)
import Unsafe.Coerce (unsafeCoerce)

free_email :: FreeEmail
free_email = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "gmail.com", "yahoo.com", "hotmail.com" ]

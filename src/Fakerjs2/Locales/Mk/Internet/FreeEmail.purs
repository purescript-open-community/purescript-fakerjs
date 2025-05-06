module Fakerjs2.Locales.Mk.Internet.FreeEmail (free_email) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

free_email = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "t.mk", "gmail.com", "yahoo.com", "hotmail.com" ]

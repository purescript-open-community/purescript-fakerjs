module Fakerjs2.Locales.Da.Internet.FreeEmail (free_email) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

free_email = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "gmail.com", "hotmail.com", "live.dk", "outlook.dk", "yahoo.dk" ]

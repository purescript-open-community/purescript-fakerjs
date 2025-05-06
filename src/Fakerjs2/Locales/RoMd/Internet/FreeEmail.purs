module Fakerjs2.Locales.RoMd.Internet.FreeEmail (free_email) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

free_email = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "mail.ru", "rambler.ru", "yandex.ru", "gmail.com", "gmail.ru", "yahoo.com", "hotmail.com" ]

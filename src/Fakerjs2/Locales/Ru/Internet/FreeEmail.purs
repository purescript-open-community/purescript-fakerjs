module Fakerjs2.Locales.Ru.Internet.FreeEmail (free_email) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

free_email = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "yandex.ru", "ya.ru", "mail.ru", "gmail.com", "yahoo.com", "hotmail.com" ]

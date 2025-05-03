module Fakerjs2.Locales.Uk.Internet.FreeEmail (free_email) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (FreeEmail)
import Unsafe.Coerce (unsafeCoerce)

free_email :: FreeEmail
free_email = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "ukr.net", "ex.ua", "e-mail.ua", "i.ua", "meta.ua", "yandex.ua", "gmail.com" ]

module Fakerjs2.Locales.FrBe.Internet.FreeEmail (free_email) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

free_email = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "advalvas.be", "mail.be", "netbel.be", "skynet.be" ]

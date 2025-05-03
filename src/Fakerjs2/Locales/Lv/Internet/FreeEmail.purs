module Fakerjs2.Locales.Lv.Internet.FreeEmail (free_email) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (FreeEmail)
import Unsafe.Coerce (unsafeCoerce)

free_email :: FreeEmail
free_email = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "inbox.lv"
  , "one.lv"
  , "mail.lv"
  , "outlook.lv"
  , "apollo.lv"
  , "yahoo.com"
  , "hotmail.com"
  , "gmail.com"
  ]

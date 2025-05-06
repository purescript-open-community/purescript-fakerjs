module Fakerjs2.Locales.PtPt.Internet.FreeEmail (free_email) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

free_email = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "gmail.com"
  , "yahoo.com"
  , "hotmail.com"
  , "outlook.com"
  , "live.com"
  , "portugalmail.pt"
  , "mail.pt"
  , "sapo.pt"
  , "aeiou.pt"
  ]

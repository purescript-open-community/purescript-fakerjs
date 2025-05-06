module Fakerjs2.Locales.Hu.Internet.FreeEmail (free_email) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

free_email = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "gmail.com"
  , "hotmail.hu"
  , "hotamil.com"
  , "freemail.hu"
  , "citromail.hu"
  , "outlook.com"
  , "outlook.hu"
  ]

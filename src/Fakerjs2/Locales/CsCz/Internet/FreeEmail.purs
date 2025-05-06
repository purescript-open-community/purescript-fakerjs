module Fakerjs2.Locales.CsCz.Internet.FreeEmail (free_email) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

free_email = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "gmail.com", "seznam.cz", "centrum.cz", "volny.cz", "atlas.cz" ]

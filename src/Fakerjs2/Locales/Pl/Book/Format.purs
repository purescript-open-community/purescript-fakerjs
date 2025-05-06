module Fakerjs2.Locales.Pl.Book.Format (format) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

format = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Audiobook", "Ebook", "Miękka okładka", "Twarda okładka" ]

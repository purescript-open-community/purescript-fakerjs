module Fakerjs2.Locales.En.Book.Format (format) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Format)
import Unsafe.Coerce (unsafeCoerce)

format :: Format
format = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Audiobook", "Ebook", "Hardcover", "Paperback" ]

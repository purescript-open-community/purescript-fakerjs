module Fakerjs2.Locales.PtBr.Book.Format (format) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

format = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Audiolivro", "Capa dura", "Capa mole", "Ebook" ]

module Fakerjs2.Locales.KaGe.Company.Prefix (prefix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

prefix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "ააიპ", "სს", "სსიპ", "შპს" ]

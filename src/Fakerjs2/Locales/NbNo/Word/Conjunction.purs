module Fakerjs2.Locales.NbNo.Word.Conjunction (conjunction) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

conjunction = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "eller", "for", "men", "og", "så" ]

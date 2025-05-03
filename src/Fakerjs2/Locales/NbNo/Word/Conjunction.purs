module Fakerjs2.Locales.NbNo.Word.Conjunction (conjunction) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Conjunction)
import Unsafe.Coerce (unsafeCoerce)

conjunction :: Conjunction
conjunction = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "eller", "for", "men", "og", "så" ]

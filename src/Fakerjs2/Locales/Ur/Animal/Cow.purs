module Fakerjs2.Locales.Ur.Animal.Cow (cow) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

cow = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "امریکی گا\x000657یے", "نیلی گا\x000657یے", "گائے" ]

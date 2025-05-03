module Fakerjs2.Locales.Ur.Animal.Insect (insect) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Insect)
import Unsafe.Coerce (unsafeCoerce)

insect :: Insect
insect = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "شہد کی مکھی", "مکھی", "چیونٹی" ]

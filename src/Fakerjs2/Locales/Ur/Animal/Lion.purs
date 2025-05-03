module Fakerjs2.Locales.Ur.Animal.Lion (lion) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Lion)
import Unsafe.Coerce (unsafeCoerce)

lion :: Lion
lion = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "ایشیای\x000652 شیر", "شمالی مغربی کانگو کا شیر", "مشرقی افریقی شیر" ]

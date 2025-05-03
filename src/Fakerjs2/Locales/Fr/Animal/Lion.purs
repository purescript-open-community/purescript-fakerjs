module Fakerjs2.Locales.Fr.Animal.Lion (lion) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Lion)
import Unsafe.Coerce (unsafeCoerce)

lion :: Lion
lion = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Lion d'Afrique", "Lion d'Asie", "Lion de l'Atlas", "Lion du Cap" ]

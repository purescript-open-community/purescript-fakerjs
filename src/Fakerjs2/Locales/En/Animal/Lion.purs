module Fakerjs2.Locales.En.Animal.Lion (lion) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Lion)
import Unsafe.Coerce (unsafeCoerce)

lion :: Lion
lion = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Asiatic Lion"
  , "Barbary Lion"
  , "Cape lion"
  , "Masai Lion"
  , "Northeast Congo Lion"
  , "Transvaal lion"
  , "West African Lion"
  ]

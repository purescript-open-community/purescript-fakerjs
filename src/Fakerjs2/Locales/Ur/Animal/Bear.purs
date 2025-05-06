module Fakerjs2.Locales.Ur.Animal.Bear (bear) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

bear = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "امریکی کالا بھالو", "ایشیای\x000670 کالا بھالو", "بھالو", "بھورا بھالو", "پانڈا" ]

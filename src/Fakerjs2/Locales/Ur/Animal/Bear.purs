module Fakerjs2.Locales.Ur.Animal.Bear (bear) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Bear)
import Unsafe.Coerce (unsafeCoerce)

bear :: Bear
bear = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "امریکی کالا بھالو", "ایشیای\x000670 کالا بھالو", "بھالو", "بھورا بھالو", "پانڈا" ]

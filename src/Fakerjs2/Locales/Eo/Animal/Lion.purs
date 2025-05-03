module Fakerjs2.Locales.Eo.Animal.Lion (lion) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Lion)
import Unsafe.Coerce (unsafeCoerce)

lion :: Lion
lion = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "azia leono"
  , "berbera leono"
  , "kaba leono"
  , "masaja leono"
  , "okcidentafrika leono"
  , "senegala leono"
  , "transvala leono"
  ]

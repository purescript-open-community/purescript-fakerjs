module Fakerjs2.Locales.FrCh.Location.Postcode (postcode) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

postcode = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "1###", "2###", "3###", "4###", "5###", "6###", "7###", "8###", "9###" ]

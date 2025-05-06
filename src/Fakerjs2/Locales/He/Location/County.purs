module Fakerjs2.Locales.He.Location.County (county) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

county = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Not relevant for Israel" ]

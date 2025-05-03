module Fakerjs2.Locales.He.Location.County (county) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (County)
import Unsafe.Coerce (unsafeCoerce)

county :: County
county = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Not relevant for Israel" ]

module Fakerjs2.Locales.EnAuOcker.Location.Postcode (postcode) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Postcode)
import Unsafe.Coerce (unsafeCoerce)

postcode :: Postcode
postcode = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "0###", "2###", "3###", "4###", "5###", "6###", "7###" ]

module Fakerjs2.Locales.Dv.PhoneNumber.Format.International (international) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (International)
import Unsafe.Coerce (unsafeCoerce)

international :: International
international = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "+9603######"
  , "+9604######"
  , "+9605######"
  , "+9606######"
  , "+9607######"
  , "+9608######"
  , "+9609######"
  ]

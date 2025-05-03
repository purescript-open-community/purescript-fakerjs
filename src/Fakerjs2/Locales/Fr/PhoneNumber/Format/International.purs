module Fakerjs2.Locales.Fr.PhoneNumber.Format.International (international) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (International)
import Unsafe.Coerce (unsafeCoerce)

international :: International
international = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "+331########"
  , "+332########"
  , "+333########"
  , "+334########"
  , "+335########"
  , "+336########"
  , "+337########"
  ]

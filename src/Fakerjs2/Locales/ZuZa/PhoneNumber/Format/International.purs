module Fakerjs2.Locales.ZuZa.PhoneNumber.Format.International (international) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (International)
import Unsafe.Coerce (unsafeCoerce)

international :: International
international = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "+271#########"
  , "+272#########"
  , "+273#########"
  , "+274#########"
  , "+275#########"
  , "+27800######"
  , "+27860######"
  ]

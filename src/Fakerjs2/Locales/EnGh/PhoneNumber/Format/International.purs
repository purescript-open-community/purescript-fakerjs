module Fakerjs2.Locales.EnGh.PhoneNumber.Format.International (international) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (International)
import Unsafe.Coerce (unsafeCoerce)

international :: International
international = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "+23320#######"
  , "+23323#######"
  , "+23324#######"
  , "+23326#######"
  , "+23327#######"
  , "+23328#######"
  , "+23350#######"
  , "+23353#######"
  , "+23354#######"
  , "+23355#######"
  , "+23356#######"
  , "+23357#######"
  , "+23358#######"
  ]

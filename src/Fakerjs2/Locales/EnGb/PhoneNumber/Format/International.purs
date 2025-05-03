module Fakerjs2.Locales.EnGb.PhoneNumber.Format.International (international) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (International)
import Unsafe.Coerce (unsafeCoerce)

international :: International
international = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "+441#########"
  , "+441#1#######"
  , "+4411########"
  , "+442#########"
  , "+443#########"
  , "+4455########"
  , "+4456########"
  , "+44800#######"
  , "+448#########"
  , "+449#########"
  , "+4416977####"
  , "+441########"
  , "+44500######"
  , "+44800######"
  ]

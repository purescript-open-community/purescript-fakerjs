module Fakerjs2.Locales.Sv.PhoneNumber.Format.International (international) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (International)
import Unsafe.Coerce (unsafeCoerce)

international :: International
international = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "+4670#######"
  , "+4672#######"
  , "+4673#######"
  , "+4676#######"
  , "+4679#######"
  , "+461#####"
  , "+462######"
  , "+463#######"
  , "+464########"
  , "+465#####"
  , "+466######"
  , "+468#######"
  , "+469########"
  ]

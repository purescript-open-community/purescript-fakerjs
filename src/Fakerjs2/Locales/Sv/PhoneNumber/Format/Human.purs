module Fakerjs2.Locales.Sv.PhoneNumber.Format.Human (human) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Human)
import Unsafe.Coerce (unsafeCoerce)

human :: Human
human = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "070#######"
  , "+4670#######"
  , "072#######"
  , "+4672#######"
  , "073#######"
  , "+4673#######"
  , "076#######"
  , "+4676#######"
  , "079#######"
  , "+4679#######"
  , "01#####"
  , "+461#####"
  , "02######"
  , "+462######"
  , "03#######"
  , "+463#######"
  , "04########"
  , "+464########"
  , "05#####"
  , "+465#####"
  , "06######"
  , "+466######"
  , "08#######"
  , "+468#######"
  , "09########"
  , "+469########"
  ]

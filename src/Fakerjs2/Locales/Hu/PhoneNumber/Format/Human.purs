module Fakerjs2.Locales.Hu.PhoneNumber.Format.Human (human) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Human)
import Unsafe.Coerce (unsafeCoerce)

human :: Human
human = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "+3620#######"
  , "+3630#######"
  , "+3650#######"
  , "+3670#######"
  , "0620#######"
  , "0630#######"
  , "0650#######"
  , "0670#######"
  , "+36 20/###-####"
  , "+36 30/###-####"
  , "+36 50/###-####"
  , "+36 70/###-####"
  , "003620#######"
  , "003630#######"
  , "003650#######"
  , "003670#######"
  ]

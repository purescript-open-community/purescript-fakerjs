module Fakerjs2.Locales.Fa.PhoneNumber.Format.Human (human) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Human)
import Unsafe.Coerce (unsafeCoerce)

human :: Human
human = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "021 ### #####"
  , "031 ### #####"
  , "041 ### #####"
  , "045 ### #####"
  , "061 ### #####"
  , "051 ### #####"
  , "058 ### #####"
  , "028 ### #####"
  , "026 ### #####"
  , "044 ### #####"
  , "024 ### #####"
  , "023 ### #####"
  , "076 ### #####"
  , "+98 21 ### #####"
  ]

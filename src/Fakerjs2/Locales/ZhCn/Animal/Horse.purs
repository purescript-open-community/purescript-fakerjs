module Fakerjs2.Locales.ZhCn.Animal.Horse (horse) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Horse)
import Unsafe.Coerce (unsafeCoerce)

horse :: Horse
horse = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "三河马", "伊利马", "河曲马", "蒙古马" ]

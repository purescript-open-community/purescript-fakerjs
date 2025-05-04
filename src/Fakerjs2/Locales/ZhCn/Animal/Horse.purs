module Fakerjs2.Locales.ZhCn.Animal.Horse (horse) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

horse = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "三河马", "伊利马", "河曲马", "蒙古马" ]

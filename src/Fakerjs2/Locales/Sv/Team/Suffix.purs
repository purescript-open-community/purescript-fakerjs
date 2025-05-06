module Fakerjs2.Locales.Sv.Team.Suffix (suffix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

suffix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "IF", "FF", "BK", "HK", "AIF", "SK", "FC", "BoIS", "FK", "BIS", "FIF", "IK" ]

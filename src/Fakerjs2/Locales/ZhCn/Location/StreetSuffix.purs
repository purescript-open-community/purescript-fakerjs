module Fakerjs2.Locales.ZhCn.Location.StreetSuffix (street_suffix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (StreetSuffix)
import Unsafe.Coerce (unsafeCoerce)

street_suffix :: StreetSuffix
street_suffix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "巷", "街", "路", "桥", "侬", "旁", "中心", "栋" ]

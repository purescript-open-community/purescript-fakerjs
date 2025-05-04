module Fakerjs2.Locales.ZhCn.Location.Continent (continent) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

continent = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "亚洲", "非洲", "欧洲", "北美洲", "南美洲", "大洋洲", "南极洲" ]

module Fakerjs2.Locales.ZhCn.Vehicle.Type (type_) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Type)
import Unsafe.Coerce (unsafeCoerce)

type_ :: Type
type_ = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "客车", "掀背车", "旅行车", "货车", "越野车", "轿车", "面包车" ]

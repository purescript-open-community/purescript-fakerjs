module Fakerjs2.Locales.ZhCn.Location.Direction (direction) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

direction =
  { cardinal: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "北", "东", "南", "西" ]
  , cardinal_abbr: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "北", "东", "南", "西" ]
  , ordinal: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "东北", "西北", "东南", "西南" ]
  , ordinal_abbr: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "东北", "西北", "东南", "西南" ]
  }

module Fakerjs2.Locales.ZhCn.Location.Direction (cardinal, cardinal_abbr, ordinal, ordinal_abbr) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (DirectionCardinal, DirectionCardinalAbbr, DirectionOrdinal, DirectionOrdinalAbbr)
import Unsafe.Coerce (unsafeCoerce)

cardinal :: DirectionCardinal
cardinal = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "北", "东", "南", "西" ]

cardinal_abbr :: DirectionCardinalAbbr
cardinal_abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "北", "东", "南", "西" ]

ordinal :: DirectionOrdinal
ordinal = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "东北", "西北", "东南", "西南" ]

ordinal_abbr :: DirectionOrdinalAbbr
ordinal_abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "东北", "西北", "东南", "西南" ]

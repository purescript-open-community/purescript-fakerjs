module Fakerjs2.Locales.Ja.Company.Category (category) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

category = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "ガス", "保険", "印刷", "建設", "情報", "水産", "農林", "通信", "運輸", "鉱業", "銀行", "電気", "食品" ]

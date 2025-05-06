module Fakerjs2.Locales.Th.Color.Human (human) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

human = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "ขาว"
  , "ชมพ\x000e39"
  , "ดำ"
  , "ทอง"
  , "น\x000e49ำตาล"
  , "น\x000e49ำเง\x000e34น"
  , "ฟ\x000e49า"
  , "ม\x000e48วง"
  , "ส\x000e49ม"
  , "เข\x000e35ยว"
  , "เข\x000e35ยวอ\x000e48อน"
  , "เข\x000e35ยวเข\x000e49ม"
  , "เข\x000e35ยวเหล\x000e37อง"
  , "เง\x000e34น"
  , "เทา"
  , "เหล\x000e37อง"
  , "แดง"
  , "โรสโกล\x000e4cด"
  ]

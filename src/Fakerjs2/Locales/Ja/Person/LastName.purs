module Fakerjs2.Locales.Ja.Person.LastName (generic) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (LastNameGeneric)
import Unsafe.Coerce (unsafeCoerce)

generic :: LastNameGeneric
generic = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "中村"
  , "井上"
  , "伊藤"
  , "佐\x003005木"
  , "佐藤"
  , "加藤"
  , "吉田"
  , "小林"
  , "山口"
  , "山本"
  , "山田"
  , "斎藤"
  , "木村"
  , "松本"
  , "林"
  , "清水"
  , "渡辺"
  , "田中"
  , "鈴木"
  , "高橋"
  ]

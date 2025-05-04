module Fakerjs2.Locales.ZhCn.Internet.FreeEmail (free_email) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

free_email = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "126.com"
  , "139.com"
  , "163.com"
  , "21cn.com"
  , "gmail.com"
  , "hotmail.com"
  , "qq.com"
  , "sina.com"
  , "sohu.com"
  , "tom.com"
  , "vip.qq.com"
  , "yahoo.cn"
  , "yahoo.com.cn"
  , "yeah.net"
  , "foxmail.com"
  , "outlook.com"
  ]

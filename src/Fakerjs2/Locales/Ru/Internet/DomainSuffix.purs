module Fakerjs2.Locales.Ru.Internet.DomainSuffix (domain_suffix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

domain_suffix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "biz"
  , "club"
  , "com"
  , "edo"
  , "info"
  , "host"
  , "moscow"
  , "net"
  , "org"
  , "online"
  , "press"
  , "pro"
  , "ru"
  , "rus"
  , "space"
  , "store"
  , "su"
  , "tech"
  , "москва"
  , "онлайн"
  , "рф"
  , "сайт"
  ]

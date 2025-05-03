module Fakerjs2.Locales.IdId.Internet.DomainSuffix (domain_suffix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (DomainSuffix)
import Unsafe.Coerce (unsafeCoerce)

domain_suffix :: DomainSuffix
domain_suffix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "com"
  , "net"
  , "org"
  , "asia"
  , "tv"
  , "biz"
  , "info"
  , "in"
  , "name"
  , "co"
  , "id"
  , "ac.id"
  , "sch.id"
  , "go.id"
  , "mil.id"
  , "co.id"
  , "or.id"
  , "web.id"
  , "my.id"
  , "net.id"
  , "biz.id"
  , "desa.id"
  , "ponpes.id"
  ]

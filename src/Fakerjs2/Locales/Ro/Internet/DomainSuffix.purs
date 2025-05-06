module Fakerjs2.Locales.Ro.Internet.DomainSuffix (domain_suffix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

domain_suffix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "com"
  , "biz"
  , "info"
  , "name"
  , "net"
  , "org"
  , "ro"
  , "com.ro"
  , "org.ro"
  , "tm.ro"
  , "store.ro"
  , "info.ro"
  , "nom.ro"
  , "nt.ro"
  , "firm.ro"
  , "www.ro"
  , "arts.ro"
  , "rec.ro"
  ]

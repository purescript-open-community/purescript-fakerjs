module Fakerjs2.Locales.EnGb.Internet.DomainSuffix (domain_suffix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (DomainSuffix)
import Unsafe.Coerce (unsafeCoerce)

domain_suffix :: DomainSuffix
domain_suffix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "ac.uk"
  , "biz"
  , "co"
  , "co.uk"
  , "com"
  , "cymru"
  , "gov.uk"
  , "info"
  , "london"
  , "ltd.uk"
  , "me.uk"
  , "name"
  , "nhs.uk"
  , "org.uk"
  , "plc.uk"
  , "sch.uk"
  , "scot"
  , "uk"
  , "wales"
  ]

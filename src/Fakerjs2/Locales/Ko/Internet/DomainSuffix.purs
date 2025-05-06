module Fakerjs2.Locales.Ko.Internet.DomainSuffix (domain_suffix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

domain_suffix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "co.kr", "com", "biz", "info", "ne.kr", "net", "or.kr", "org" ]

module Fakerjs2.Locales.PtPt.Internet.DomainSuffix (domain_suffix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

domain_suffix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "pt", "gov.pt", "com.pt", "org.pt", "eu", "com", "biz", "info", "name", "net", "org" ]

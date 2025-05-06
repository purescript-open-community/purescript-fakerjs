module Fakerjs2.Locales.Mk.Internet.DomainSuffix (domain_suffix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

domain_suffix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "mk", "com", "com.mk", "org.mk", "gov.mk", "net.mk", "inf.mk", "net", "org", "eu", "мкд" ]

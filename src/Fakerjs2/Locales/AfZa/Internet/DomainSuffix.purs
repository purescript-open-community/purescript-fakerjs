module Fakerjs2.Locales.AfZa.Internet.DomainSuffix (domain_suffix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

domain_suffix :: NonEmptyArray NonEmptyString
domain_suffix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "co.za", "com", "org.za", "info", "net.za" ]

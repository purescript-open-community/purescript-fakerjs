module Fakerjs2.Locales.Da.Internet.DomainSuffix (domain_suffix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (DomainSuffix)
import Unsafe.Coerce (unsafeCoerce)

domain_suffix :: DomainSuffix
domain_suffix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "com", "info", "name", "net", "org", "dk" ]

module Fakerjs2.Locales.EnGh.Internet.DomainSuffix (domain_suffix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

domain_suffix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "com.gh", "edu.gh", "gov.gh", "org.gh", "com", "net", "org", "biz", "co" ]

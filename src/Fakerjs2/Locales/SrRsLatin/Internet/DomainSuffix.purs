module Fakerjs2.Locales.SrRsLatin.Internet.DomainSuffix (domain_suffix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

domain_suffix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "rs", "com", "co.rs", "edu.rs", "in.rs" ]

module Fakerjs2.Locales.Pl.Internet.DomainSuffix (domain_suffix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (DomainSuffix)
import Unsafe.Coerce (unsafeCoerce)

domain_suffix :: DomainSuffix
domain_suffix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "agro.pl"
  , "auto.pl"
  , "biz.pl"
  , "com.pl"
  , "edu.pl"
  , "gmina.pl"
  , "gov.pl"
  , "info.pl"
  , "miasta.pl"
  , "net.pl"
  , "nieruchomosci.pl"
  , "org.pl"
  , "pl"
  , "powiat.pl"
  , "priv.pl"
  , "sklep.pl"
  , "szkola.pl"
  , "targi.pl"
  , "turystyka.pl"
  ]

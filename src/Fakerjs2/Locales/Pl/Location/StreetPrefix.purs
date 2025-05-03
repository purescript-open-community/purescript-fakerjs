module Fakerjs2.Locales.Pl.Location.StreetPrefix (street_prefix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (StreetPrefix)
import Unsafe.Coerce (unsafeCoerce)

street_prefix :: StreetPrefix
street_prefix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "al."
  , "bulw."
  , "droga"
  , "ogród"
  , "os."
  , "park"
  , "pl."
  , "rondo"
  , "rynek"
  , "skwer"
  , "szosa"
  , "ul."
  , "wyb."
  , "wyspa"
  ]

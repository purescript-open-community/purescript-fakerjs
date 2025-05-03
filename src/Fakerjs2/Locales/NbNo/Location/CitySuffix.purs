module Fakerjs2.Locales.NbNo.Location.CitySuffix (city_suffix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (CitySuffix)
import Unsafe.Coerce (unsafeCoerce)

city_suffix :: CitySuffix
city_suffix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "berg"
  , "borg"
  , "by"
  , "bø"
  , "dal"
  , "eid"
  , "fjell"
  , "fjord"
  , "foss"
  , "grunn"
  , "hamn"
  , "havn"
  , "helle"
  , "mark"
  , "nes"
  , "odden"
  , "sand"
  , "sjøen"
  , "stad"
  , "strand"
  , "strøm"
  , "sund"
  , "vik"
  , "vær"
  , "våg"
  , "ø"
  , "øy"
  , "ås"
  ]

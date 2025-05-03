module Fakerjs2.Locales.Eo.Location.StreetPrefix (street_prefix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (StreetPrefix)
import Unsafe.Coerce (unsafeCoerce)

street_prefix :: StreetPrefix
street_prefix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Aleo"
  , "Arbaro"
  , "Avenuo"
  , "Bulvardo"
  , "Digo"
  , "Ĝardeno"
  , "Insulo"
  , "Kampo"
  , "Klifo"
  , "Lago"
  , "Monto"
  , "Parko"
  , "Placo"
  , "Ponto"
  , "Rivero"
  , "Strato"
  , "Tunelo"
  , "Viadukto"
  , "Vojo"
  ]

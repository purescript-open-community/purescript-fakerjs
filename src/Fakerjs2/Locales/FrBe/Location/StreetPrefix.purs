module Fakerjs2.Locales.FrBe.Location.StreetPrefix (street_prefix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (StreetPrefix)
import Unsafe.Coerce (unsafeCoerce)

street_prefix :: StreetPrefix
street_prefix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Allée"
  , "Chemin"
  , "Cours"
  , "Rue"
  , "Avenue"
  , "Boulevard"
  , "Drève"
  , "Galerie"
  , "Impasse"
  , "Jardin"
  , "Quai"
  , "Passage"
  , "Parc"
  , "Parvis"
  , "Petite rue"
  , "Place"
  , "Porte"
  , "Square"
  , "Voie"
  ]

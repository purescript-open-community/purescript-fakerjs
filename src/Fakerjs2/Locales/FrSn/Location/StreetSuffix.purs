module Fakerjs2.Locales.FrSn.Location.StreetSuffix (street_suffix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (StreetSuffix)
import Unsafe.Coerce (unsafeCoerce)

street_suffix :: StreetSuffix
street_suffix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "de l'alternance"
  , "de l'émergence"
  , "Abdou Aziz Sy Dabakh"
  , "Amadou Assane Ndoye"
  , "Birago Diop"
  , "Blaise Diagne"
  , "Cheikh Amadou Bamba"
  , "Cheikh Anta Diop"
  , "Cheikh Seydi El Hadji Malick Sy"
  , "Dial Diop"
  , "Faidherbe"
  , "Galandou Diouf"
  , "Houphouët Boigny"
  , "Lamine Gueye"
  , "Lat Dior"
  , "Léopold Sedar Senghor"
  , "Neslon Mandela"
  , "Saint Michel"
  , "St Joseph"
  , "Sérigne Fallou Mbacké"
  , "Victor Hugo"
  , "Wagane Diouf"
  , "William Ponty"
  , "Yacine Boubou"
  , "de Bordeaux"
  , "de Contournement Nord"
  , "de Nguinth"
  , "des Diambars"
  , "des Jasmins"
  , "du Baol"
  , "du Tirailleur"
  ]

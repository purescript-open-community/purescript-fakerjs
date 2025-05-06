module Fakerjs2.Locales.Fr.Location.State (state) where

import Data.Array.NonEmpty (NonEmptyArray)
import Unsafe.Coerce (unsafeCoerce)

state = (unsafeCoerce :: Array String -> NonEmptyArray String)
  [ "Alsace"
  , "Aquitaine"
  , "Auvergne"
  , "Basse-Normandie"
  , "Bourgogne"
  , "Bretagne"
  , "Centre"
  , "Champagne-Ardenne"
  , "Corse"
  , "Franche-Comté"
  , "Haute-Normandie"
  , "Île-de-France"
  , "Languedoc-Roussillon"
  , "Limousin"
  , "Lorraine"
  , "Midi-Pyrénées"
  , "Nord-Pas-de-Calais"
  , "Pays de la Loire"
  , "Picardie"
  , "Poitou-Charentes"
  , "Provence-Alpes-Côte d'Azur"
  , "Rhône-Alpes"
  ]

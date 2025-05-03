module Fakerjs2.Locales.FrCh.Location.State (state) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (State)
import Unsafe.Coerce (unsafeCoerce)

state :: State
state = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Argovie"
  , "Appenzell Rhodes-Intérieures"
  , "Appenzell Rhodes-Extérieures"
  , "Bâle-Ville"
  , "Bâle-Campagne"
  , "Berne"
  , "Fribourg"
  , "Genève"
  , "Glaris"
  , "Grisons"
  , "Jura"
  , "Lucerne"
  , "Neuchâtel"
  , "Nidwald"
  , "Obwald"
  , "Schaffhouse"
  , "Schwyt"
  , "Soleure"
  , "Saint-Gall"
  , "Thurgovie"
  , "Tessin"
  , "Uri"
  , "Valai"
  , "Vaud"
  , "Zoug"
  , "Zurich"
  ]

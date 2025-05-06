module Fakerjs2.Locales.Es.Location.State (state) where

import Data.Array.NonEmpty (NonEmptyArray)
import Unsafe.Coerce (unsafeCoerce)

state = (unsafeCoerce :: Array String -> NonEmptyArray String)
  [ "Andalucía"
  , "Aragón"
  , "Principado de Asturias"
  , "Baleares"
  , "Canarias"
  , "Cantabria"
  , "Castilla-La Mancha"
  , "Castilla y León"
  , "Cataluña"
  , "Comunidad Valenciana"
  , "Extremadura"
  , "Galicia"
  , "La Rioja"
  , "Comunidad de Madrid"
  , "Navarra"
  , "País Vasco"
  , "Región de Murcia"
  ]

module Fakerjs2.Locales.EsMx.Color.Human (human) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Human)
import Unsafe.Coerce (unsafeCoerce)

human :: Human
human = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "aceituna"
  , "amarillo"
  , "azul"
  , "blanco"
  , "cian"
  , "cielo azul"
  , "ciruela"
  , "fucsia"
  , "gris"
  , "lavanda"
  , "lima"
  , "magenta"
  , "marfil"
  , "marrón"
  , "menta verde"
  , "morado"
  , "naranja"
  , "negro"
  , "oro"
  , "orquídea"
  , "plata"
  , "rojo"
  , "rosa"
  , "salmón"
  , "tan"
  , "teal"
  , "turquesa"
  , "verde"
  , "violeta"
  , "índigo"
  ]

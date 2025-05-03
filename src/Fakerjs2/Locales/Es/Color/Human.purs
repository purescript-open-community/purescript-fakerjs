module Fakerjs2.Locales.Es.Color.Human (human) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Human)
import Unsafe.Coerce (unsafeCoerce)

human :: Human
human = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "amarillo"
  , "azul"
  , "azul marino"
  , "beige"
  , "blanco"
  , "carmesí"
  , "celeste"
  , "cian"
  , "crema"
  , "dorado"
  , "esmeralda"
  , "fucsia"
  , "granate"
  , "gris"
  , "gualda"
  , "lavanda"
  , "lila"
  , "magenta"
  , "marfil"
  , "marrón"
  , "morado"
  , "naranja"
  , "negro"
  , "ocre"
  , "plateado"
  , "púrpura"
  , "rojo"
  , "rosa"
  , "salmón"
  , "terracota"
  , "turquesa"
  , "verde"
  , "verde lima"
  , "verde menta"
  , "verde oliva"
  , "violeta"
  , "índigo"
  ]

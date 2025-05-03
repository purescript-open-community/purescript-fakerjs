module Fakerjs2.Locales.En.Color.Human (human) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Human)
import Unsafe.Coerce (unsafeCoerce)

human :: Human
human = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "azure"
  , "black"
  , "blue"
  , "cyan"
  , "fuchsia"
  , "gold"
  , "green"
  , "grey"
  , "indigo"
  , "ivory"
  , "lavender"
  , "lime"
  , "magenta"
  , "maroon"
  , "mint green"
  , "olive"
  , "orange"
  , "orchid"
  , "pink"
  , "plum"
  , "purple"
  , "red"
  , "salmon"
  , "silver"
  , "sky blue"
  , "tan"
  , "teal"
  , "turquoise"
  , "violet"
  , "white"
  , "yellow"
  ]

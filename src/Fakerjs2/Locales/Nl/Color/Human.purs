module Fakerjs2.Locales.Nl.Color.Human (human) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Human)
import Unsafe.Coerce (unsafeCoerce)

human :: Human
human = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "appelgroen"
  , "azuurblauw"
  , "blauw"
  , "bruin"
  , "cyaan"
  , "donkergrijs"
  , "fuchsia"
  , "geel"
  , "goud"
  , "grijs"
  , "groen"
  , "groenblauw"
  , "hemelsblauw"
  , "indigo"
  , "ivoor"
  , "kastanjebruin"
  , "koningblauw"
  , "lavendel"
  , "levend wit"
  , "limoen"
  , "magenta"
  , "muntgroen"
  , "oker"
  , "olijfgroen"
  , "oranje"
  , "oudroze"
  , "paars"
  , "purper"
  , "rood"
  , "roze"
  , "terracotta"
  , "turkoois"
  , "wit"
  , "zalmroze"
  , "zilver"
  , "zwart"
  ]

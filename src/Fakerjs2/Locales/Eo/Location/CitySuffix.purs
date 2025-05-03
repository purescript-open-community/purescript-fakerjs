module Fakerjs2.Locales.Eo.Location.CitySuffix (city_suffix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (CitySuffix)
import Unsafe.Coerce (unsafeCoerce)

city_suffix :: CitySuffix
city_suffix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "burgo"
  , "damo"
  , "fildo"
  , "forto"
  , "fuorto"
  , "grado"
  , "haveno"
  , "porto"
  , "stado"
  , "ŝiro"
  , "urbo"
  , "valo"
  , "viko"
  , "vilao"
  , "vilaĝo"
  , "vilo"
  ]

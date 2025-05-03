module Fakerjs2.Locales.En.Food.Adjective (adjective) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Adjective)
import Unsafe.Coerce (unsafeCoerce)

adjective :: Adjective
adjective = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "bitter"
  , "creamy"
  , "crispy"
  , "crunchy"
  , "delicious"
  , "fluffy"
  , "fresh"
  , "golden"
  , "juicy"
  , "moist"
  , "rich"
  , "salty"
  , "savory"
  , "smoky"
  , "sour"
  , "spicy"
  , "sweet"
  , "tangy"
  , "tender"
  , "zesty"
  ]

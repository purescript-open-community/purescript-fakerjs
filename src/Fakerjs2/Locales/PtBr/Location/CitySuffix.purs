module Fakerjs2.Locales.PtBr.Location.CitySuffix (city_suffix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Unsafe.Coerce (unsafeCoerce)

city_suffix = (unsafeCoerce :: Array String -> NonEmptyArray String)
  [ " do Descoberto", " de Nossa Senhora", " do Norte", " do Sul" ]

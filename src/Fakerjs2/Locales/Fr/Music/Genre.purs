module Fakerjs2.Locales.Fr.Music.Genre (genre) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

genre = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Blues"
  , "Classique"
  , "Country"
  , "Folk"
  , "Funk"
  , "Hip Hop"
  , "Jazz"
  , "Latine"
  , "Lofi"
  , "Metal"
  , "Pop"
  , "Rap"
  , "Reggae"
  , "Rock"
  , "Soul"
  , "Variété"
  , "World"
  , "Électronique"
  ]

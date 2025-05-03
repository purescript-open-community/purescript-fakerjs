module Fakerjs2.Locales.Pl.Music.Genre (genre) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Genre)
import Unsafe.Coerce (unsafeCoerce)

genre :: Genre
genre = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Alternatywna"
  , "Blues"
  , "Country"
  , "Disco polo"
  , "Elektroniczna"
  , "Funk"
  , "Hip Hop"
  , "Indie Pop"
  , "Jazz"
  , "Klasyczna"
  , "Latynoska"
  , "Ludowa"
  , "Metal"
  , "Pop"
  , "Rap"
  , "Reggae"
  , "Rock"
  , "Soul"
  ]

module Fakerjs2.Locales.Pl.Book.Genre (genre) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Genre)
import Unsafe.Coerce (unsafeCoerce)

genre :: Genre
genre = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Beletrystyka"
  , "Biografia"
  , "Fantastyka"
  , "Fantastyka naukowa"
  , "Kryminał"
  , "Książka kucharska"
  , "Literatura dziecięca"
  , "Literatura faktu"
  , "Literatura młodzieżowa"
  , "Literatura naukowa"
  , "Literatura piękna"
  , "Literatura podróżnicza"
  , "Literatura popularnonaukowa"
  , "Poezja"
  , "Powieść historyczna"
  , "Powieść przygodowa"
  , "Reportaż"
  , "Rozwój osobisty"
  ]

module Fakerjs2.Locales.En.Book.Genre (genre) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Genre)
import Unsafe.Coerce (unsafeCoerce)

genre :: Genre
genre = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Adventure"
  , "Biography"
  , "Business"
  , "Children's Literature"
  , "Classic"
  , "Comedy"
  , "Comic"
  , "Detective"
  , "Drama"
  , "Fantasy"
  , "Graphic Novel"
  , "Historical Fiction"
  , "Horror"
  , "Memoir"
  , "Mystery"
  , "Mythology"
  , "Philosophy"
  , "Poetry"
  , "Psychology"
  , "Religion"
  , "Romance"
  , "Science Fiction"
  , "Thriller"
  , "Western"
  , "Young Adult"
  ]

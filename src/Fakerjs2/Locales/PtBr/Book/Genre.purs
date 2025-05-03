module Fakerjs2.Locales.PtBr.Book.Genre (genre) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Genre)
import Unsafe.Coerce (unsafeCoerce)

genre :: Genre
genre = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Aventura"
  , "Biografia"
  , "Clássico"
  , "Comédia"
  , "Detetive"
  , "Drama"
  , "Fantasia"
  , "Faroeste"
  , "Ficção Científica"
  , "Ficção Histórica"
  , "Filosofia"
  , "Literatura Infantil"
  , "Memórias"
  , "Mistério"
  , "Mitologia"
  , "Negócios"
  , "Poesia"
  , "Psicologia"
  , "Quadrinhos"
  , "Religião"
  , "Romance"
  , "Romance Gráfico"
  , "Suspense"
  , "Terror"
  ]

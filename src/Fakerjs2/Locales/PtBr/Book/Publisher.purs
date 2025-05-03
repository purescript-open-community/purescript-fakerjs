module Fakerjs2.Locales.PtBr.Book.Publisher (publisher) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Publisher)
import Unsafe.Coerce (unsafeCoerce)

publisher :: Publisher
publisher = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Companhia das Letras"
  , "Editora Abril"
  , "Editora Aleph"
  , "Editora Antofágica"
  , "Editora Conrad"
  , "Editora Darkside"
  , "Editora FTD"
  , "Editora Gente"
  , "Editora HarperCollins Brasil"
  , "Editora Intrínseca"
  , "Editora L&PM"
  , "Editora Martin Claret"
  , "Editora Melhoramentos"
  , "Editora Moderna"
  , "Editora Panda Books"
  , "Editora Pipoca & Nanquim"
  , "Editora Planeta de Livros Brasil"
  , "Editora Rocco"
  , "Editora Saraiva"
  , "Editora Sextante"
  , "Editora Viseu"
  , "Editora Voo"
  , "Globo Livros"
  ]

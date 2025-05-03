module Fakerjs2.Locales.PtBr.Book.Author (author) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Author)
import Unsafe.Coerce (unsafeCoerce)

author :: Author
author = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Aluísio Azevedo"
  , "Ariano Suassuna"
  , "Bernardo Guimarães"
  , "Caio Fernando Abreu"
  , "Carlos Drummond de Andrade"
  , "Carolina Maria de Jesus"
  , "Castro Alves"
  , "Cecília Meireles"
  , "Clarice Lispector"
  , "Conceição Evaristo"
  , "Cora Coralina"
  , "Cruz e Sousa"
  , "Gonçalves Dias"
  , "Gregório de Matos"
  , "Jorge Amado"
  , "José de Alencar"
  , "João Guimarães Rosa"
  , "Luis Fernando Verissimo"
  , "Lygia Bojunga"
  , "Machado de Assis"
  , "Manoel de Barros"
  , "Marina Colasanti"
  , "Mario Quintana"
  , "Mauricio de Sousa"
  , "Monteiro Lobato"
  , "Mário de Andrade"
  , "Nelson Rodrigues"
  , "Olavo Bilac"
  , "Paulo Coelho"
  , "Rubem Fonseca"
  , "Ziraldo"
  , "Álvares de Azevedo"
  ]

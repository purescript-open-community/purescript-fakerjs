module Fakerjs2.Locales.Pl.Book.Series (series) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

series = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Archiwum Burzowego Światła"
  , "Cykl Inkwizytorski"
  , "Diuna"
  , "Dziedzictwo"
  , "Harry Potter"
  , "Igrzyska Śmierci"
  , "Jakub Wędrowycz"
  , "Koło Czasu"
  , "Malazańska Księga Poległych"
  , "Mroczna Wieża"
  , "Mroczne Materie"
  , "Opowieści z Narnii"
  , "Pan Lodowego Ogrodu"
  , "Percy Jackson"
  , "Pieśń lodu i ognia"
  , "Saga o Ludziach Lodu"
  , "Sherlock Holmes"
  , "Wiedźmin"
  , "Władca Pierścieni"
  , "Zwiadowcy"
  , "Świat Dysku"
  ]

module Fakerjs2.Locales.Pl.Book.Author (author) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Author)
import Unsafe.Coerce (unsafeCoerce)

author :: Author
author = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Andrzej Maleszka"
  , "Andrzej Pilipiuk"
  , "Andrzej Sapkowski"
  , "Anita Głowińska"
  , "Ałbena Grabowska"
  , "Czesław Miłosz"
  , "Grzegorz Kasdepke"
  , "Henryk Sienkiewicz"
  , "Jacek Dukaj"
  , "Jacek Piekara"
  , "Jakub Żulczyk"
  , "Jarosław Grzędowicz"
  , "Jerzy Pilch"
  , "Joanna Bator"
  , "Katarzyna Bonda"
  , "Katarzyna Michalak"
  , "Krzysztof Kamil Baczyński"
  , "Leopold Tyrmand"
  , "Mariusz Szczygieł"
  , "Marta Galewska-Kustra"
  , "Olga Tokarczuk"
  , "Paulina Świst"
  , "Remigiusz Mróz"
  , "Stanisław Lem"
  , "Sylwia Chutnik"
  , "Szczepan Twardoch"
  , "Tadeusz Konwicki"
  , "Wiesław Myśliwski"
  , "Wisława Szymborska"
  , "Wojciech Chmielarz"
  , "Zbigniew Herbert"
  , "Zygmunt Miłoszewski"
  ]

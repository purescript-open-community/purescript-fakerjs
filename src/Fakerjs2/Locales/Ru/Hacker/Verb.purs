module Fakerjs2.Locales.Ru.Hacker.Verb (verb) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Verb)
import Unsafe.Coerce (unsafeCoerce)

verb :: Verb
verb = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "ввести"
  , "взломать"
  , "вычислить"
  , "генерировать"
  , "запрограммировать"
  , "зашифровать"
  , "импортировать"
  , "индексировать"
  , "квантифицировать"
  , "копировать"
  , "навигировать"
  , "обойти"
  , "передать"
  , "перезагрузить"
  , "переопределить"
  , "разобрать"
  , "распарсить"
  , "сжать"
  , "синтезировать"
  , "соединить"
  , "сохранить"
  , "экспортировать"
  ]

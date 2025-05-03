module Fakerjs2.Locales.Ru.Hacker.Ingverb (ingverb) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Ingverb)
import Unsafe.Coerce (unsafeCoerce)

ingverb :: Ingverb
ingverb = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "архивирование"
  , "взлом"
  , "вычисление"
  , "генерация"
  , "индексирование"
  , "копирование"
  , "навигация"
  , "обход"
  , "определение количества"
  , "передача"
  , "переопределение"
  , "программирование"
  , "разбор"
  , "резервное копирование"
  , "сжатие"
  , "синтез"
  , "скачивание"
  , "соединение"
  , "шифрование"
  ]

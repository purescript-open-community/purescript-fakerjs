module Fakerjs2.Locales.Ru.Commerce.Department (department) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

department = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Автомобильное"
  , "Бакалея"
  , "Галантерея"
  , "Дом"
  , "Игрушки"
  , "Книги"
  , "Меха"
  , "Одежда"
  , "Пряжа"
  , "Спорт"
  , "Фильмы"
  , "Электроника"
  , "детское"
  , "для малышей"
  , "здоровье"
  , "игры"
  , "компьютеры"
  , "красота"
  , "музыка"
  , "обувь"
  , "промышленное"
  , "садинструмент"
  , "туризм"
  , "украшения"
  ]

module Fakerjs2.Locales.Ru.Commerce.ProductName (adjective, material, product) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

adjective = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Большой"
  , "Великолепный"
  , "Грубый"
  , "Интеллектуальный"
  , "Лоснящийся"
  , "Маленький"
  , "Невероятный"
  , "Потрясающий"
  , "Практичный"
  , "Свободный"
  , "Фантастический"
  , "Эргономичный"
  ]

material = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Бетонный"
  , "Гранитный"
  , "Деревянный"
  , "Кожанный"
  , "Меховой"
  , "Натуральный"
  , "Неодимовый"
  , "Пластиковый"
  , "Резиновый"
  , "Стальной"
  , "Хлопковый"
  ]

product = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Автомобиль"
  , "Берет"
  , "Ботинок"
  , "Кепка"
  , "Клатч"
  , "Компьютер"
  , "Кошелек"
  , "Кулон"
  , "Куртка"
  , "Майка"
  , "Ножницы"
  , "Носки"
  , "Плащ"
  , "Портмоне"
  , "Ремень"
  , "Сабо"
  , "Свитер"
  , "Стол"
  , "Стул"
  , "Шарф"
  ]

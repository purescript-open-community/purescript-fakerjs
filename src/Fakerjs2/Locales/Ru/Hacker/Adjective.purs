module Fakerjs2.Locales.Ru.Hacker.Adjective (adjective) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Adjective)
import Unsafe.Coerce (unsafeCoerce)

adjective :: Adjective
adjective = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "1080-пиксельный"
  , "беспроводной"
  , "виртуальный"
  , "внутренний"
  , "вспомогательный"
  , "излишний"
  , "кросс-платформенный"
  , "многобайтный"
  , "мобильный"
  , "нейронный"
  , "онлайн"
  , "оптический"
  , "основной"
  , "свободно-распростроняемый"
  , "сенсорный"
  , "твердотельный"
  , "цифровой"
  ]

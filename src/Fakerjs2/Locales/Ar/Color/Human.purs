module Fakerjs2.Locales.Ar.Color.Human (human) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Human)
import Unsafe.Coerce (unsafeCoerce)

human :: Human
human = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "أبيض"
  , "أحمر"
  , "أحمر غامق"
  , "أحمر فاتح"
  , "أخضر"
  , "أخضر غامق"
  , "أخضر فاتح"
  , "أرجواني"
  , "أرجواني خفيف"
  , "أرجواني فاتح"
  , "أزرق"
  , "أزرق سماوي"
  , "أزرق غامق"
  , "أزرق فاتح"
  , "أسمر"
  , "أسود"
  , "أصفر"
  , "برتقالي"
  , "بنفسجي"
  , "بني"
  , "تركواز"
  , "ذهبي"
  , "رصاصي"
  , "رمادي"
  , "زهري"
  , "زيتوني"
  , "عاجي"
  , "فضي"
  , "فيروزي"
  , "كستنائي"
  , "ليموني"
  , "نيلي"
  ]

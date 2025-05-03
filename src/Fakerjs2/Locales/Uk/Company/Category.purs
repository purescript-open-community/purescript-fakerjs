module Fakerjs2.Locales.Uk.Company.Category (category) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Category)
import Unsafe.Coerce (unsafeCoerce)

category :: Category
category = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Збут", "Постач", "Пром", "Торг", "Трейд" ]

module Fakerjs2.Locales.Uk.Company.Category (category) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

category = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Збут", "Постач", "Пром", "Торг", "Трейд" ]

module Fakerjs2.Locales.He.Person.Prefix (female, generic, male) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

female = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "'פרופ", "גברת", "ד\"ר", "עו\"ד" ]

generic = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "'פרופ", "גברת", "ד\"ר", "מר", "עו\"ד" ]

male = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "'פרופ", "ד\"ר", "מר", "עו\"ד" ]

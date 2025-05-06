module Fakerjs2.Locales.IdId.Person.FemaleTitle (female_title) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

female_title = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "dr.", "drg.", "Dr.", "Hj." ]

module Fakerjs2.Locales.IdId.Person.MaleTitle (male_title) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

male_title = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "dr.", "drg.", "Dr.", "Drs.", "Ir.", "H." ]

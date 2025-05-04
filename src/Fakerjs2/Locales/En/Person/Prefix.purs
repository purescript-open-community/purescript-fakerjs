module Fakerjs2.Locales.En.Person.Prefix (prefix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Maybe (Maybe(..))
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

prefix = Just
  { female: Just
      ( (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
          [ "Dr.", "Miss", "Mrs.", "Ms." ]
      )
  , generic: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "Dr.", "Miss", "Mr.", "Mrs.", "Ms." ]
  , male: Just ((unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "Dr.", "Mr." ])
  }

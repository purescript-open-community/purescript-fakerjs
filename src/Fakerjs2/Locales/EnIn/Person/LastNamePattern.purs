module Fakerjs2.Locales.EnIn.Person.LastNamePattern (female, generic, male) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Maybe (Maybe(..))
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Weighted)
import Unsafe.Coerce (unsafeCoerce)

female = Nothing
generic = Just
  ( (unsafeCoerce :: Array (Weighted String) -> NonEmptyArray (Weighted NonEmptyString))
      [ { value: "{{person.last_name.generic}}", weight: 95 }
      , { value: "{{person.last_name.generic}}-{{person.last_name.generic}}", weight: 5 }
      ]
  )

male = Nothing

module Fakerjs2.Locales.Lv.Person.LastNamePattern (female, generic, male) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Maybe (Maybe(..))
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Weighted)
import Unsafe.Coerce (unsafeCoerce)

female = Just
  ( (unsafeCoerce :: Array (Weighted String) -> NonEmptyArray (Weighted NonEmptyString))
      [ { value: "{{person.last_name.female}}", weight: 8 }
      , { value: "{{person.last_name.female}}-{{person.last_name.female}}", weight: 2 }
      ]
  )

generic = Nothing
male = Just
  ( (unsafeCoerce :: Array (Weighted String) -> NonEmptyArray (Weighted NonEmptyString))
      [ { value: "{{person.last_name.male}}", weight: 8 }
      , { value: "{{person.last_name.male}}-{{person.last_name.male}}", weight: 2 }
      ]
  )

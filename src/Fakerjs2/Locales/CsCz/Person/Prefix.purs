module Fakerjs2.Locales.CsCz.Person.Prefix (female, generic, male) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

female = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Ing.", "JUDr.", "MUDr.", "Mgr." ]

generic = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Ing.", "JUDr.", "MUDr.", "Mgr." ]

male = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Ing.", "JUDr.", "MUDr.", "Mgr." ]

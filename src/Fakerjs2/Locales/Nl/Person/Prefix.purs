module Fakerjs2.Locales.Nl.Person.Prefix (female, generic, male) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

female = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Bsc", "Dr.", "Drs.", "Ir.", "Mevr.", "Msc", "Prof." ]

generic = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Bsc", "Dhr.", "Dr.", "Drs.", "Ir.", "Mevr.", "Msc", "Prof." ]

male = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Bsc", "Dhr.", "Dr.", "Drs.", "Ir.", "Msc", "Prof." ]

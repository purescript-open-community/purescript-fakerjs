module Fakerjs2.Locales.FrBe.Person.Gender (gender) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

gender = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Asexué"
  , "Homme"
  , "Femme"
  , "Androgyne"
  , "Genre non conforme"
  , "Trans"
  , "Transexuel"
  , "Personne transgenre"
  ]

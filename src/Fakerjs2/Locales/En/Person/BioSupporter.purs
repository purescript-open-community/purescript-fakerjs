module Fakerjs2.Locales.En.Person.BioSupporter (bio_supporter) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

bio_supporter = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "advocate", "devotee", "enthusiast", "fan", "junkie", "lover", "supporter" ]

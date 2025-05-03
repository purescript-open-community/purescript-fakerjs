module Fakerjs2.Locales.IdId.Person.MaleTitle (male_title) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (MaleTitle)
import Unsafe.Coerce (unsafeCoerce)

male_title :: MaleTitle
male_title = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "dr.", "drg.", "Dr.", "Drs.", "Ir.", "H." ]

module Fakerjs2.Locales.FrCh.Person.Sex (sex) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Sex)
import Unsafe.Coerce (unsafeCoerce)

sex :: Sex
sex = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "Femme", "Homme" ]

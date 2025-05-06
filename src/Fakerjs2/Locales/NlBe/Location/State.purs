module Fakerjs2.Locales.NlBe.Location.State (state) where

import Data.Array.NonEmpty (NonEmptyArray)
import Unsafe.Coerce (unsafeCoerce)

state = (unsafeCoerce :: Array String -> NonEmptyArray String)
  [ "West-Vlaanderen", "Oost-Vlaanderen", "Vlaams-Brabant", "Antwerpen", "Limburg", "Brussel" ]

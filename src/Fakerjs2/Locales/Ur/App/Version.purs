module Fakerjs2.Locales.Ur.App.Version (version) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

version = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "0.#.#", "0.##", "#.##", "#.#", "#.#.#" ]

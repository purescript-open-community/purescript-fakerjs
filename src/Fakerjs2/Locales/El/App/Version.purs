module Fakerjs2.Locales.El.App.Version (version) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Version)
import Unsafe.Coerce (unsafeCoerce)

version :: Version
version = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "0.#.#", "0.##", "#.##", "#.#", "#.#.#" ]

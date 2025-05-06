module Fakerjs2.Locales.Hy.Location.Direction (cardinal, cardinal_abbr, ordinal, ordinal_abbr) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

cardinal = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Հյուսիսային", "Արևելյան", "Հարավային", "Արևմտյան" ]

cardinal_abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "հս․ լ․", "ավ․ ե․", "հվ․ լ․", "ամ․ ե․" ]

ordinal = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Հյուսիսարևելյան", "Հյուսիսարևմտյան", "Հարավարևելյան", "Հարավարևմտյան" ]

ordinal_abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "հս․ լ․ ավ․ ե․", "հս․ լ․ ամ․ ե․", "հվ․ լ․ ավ․ ե․", "հվ․ լ․ ամ․ ե․" ]

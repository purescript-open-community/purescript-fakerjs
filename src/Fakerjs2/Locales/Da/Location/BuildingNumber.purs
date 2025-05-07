module Fakerjs2.Locales.Da.Location.BuildingNumber (building_number) where

import Data.Array.NonEmpty (NonEmptyArray)
import Fakerjs2.Helpers.FromRegExp.Types (Atom(..), Quantifier(..), TypeSafePattern(..))
import Unsafe.Coerce (unsafeCoerce)

building_number =
  ( unsafeCoerce
      :: Array (NonEmptyArray TypeSafePattern) -> NonEmptyArray (NonEmptyArray TypeSafePattern)
  )
    [ (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom AnyDigit Once ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom AnyDigit (Exactly 2) ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom AnyDigit (Exactly 3) ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar 'A') Once, PAtom AnyDigit (Exactly 2) ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar 'B') Once, PAtom AnyDigit (Exactly 2) ]
    ]

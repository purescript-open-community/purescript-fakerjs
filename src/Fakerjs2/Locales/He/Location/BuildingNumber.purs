module Fakerjs2.Locales.He.Location.BuildingNumber (building_number) where

import Data.Array.NonEmpty (NonEmptyArray)
import Fakerjs2.Helpers.FromRegExp.Types (Atom(..), Quantifier(..), TypeSafePattern(..))
import Unsafe.Coerce (unsafeCoerce)

building_number =
  ( unsafeCoerce
      :: Array (NonEmptyArray TypeSafePattern) -> NonEmptyArray (NonEmptyArray TypeSafePattern)
  )
    [ (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom AnyDigit (Exactly 3) ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom AnyDigit (Exactly 2) ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom AnyDigit Once ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar ''') Once, PAtom (LitChar 'ב') Once, PAtom AnyDigit (Exactly 2) ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar ''') Once, PAtom (LitChar 'א') Once, PAtom AnyDigit (Exactly 2) ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar ''') Once, PAtom (LitChar 'א') Once, PAtom AnyDigit Once ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar ''') Once, PAtom (LitChar 'ב') Once, PAtom AnyDigit Once ]
    ]

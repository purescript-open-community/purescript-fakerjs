module Fakerjs2.Locales.FrBe.Location.BuildingNumber (building_number) where

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
        [ PAtom (LitChar ' ') Once
        , PAtom (LitChar 'b') Once
        , PAtom (LitChar 'i') Once
        , PAtom (LitChar 's') Once
        , PAtom AnyDigit Once
        ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar ' ') Once
        , PAtom (LitChar 'b') Once
        , PAtom (LitChar 'i') Once
        , PAtom (LitChar 's') Once
        , PAtom AnyDigit (Exactly 2)
        ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar ' ') Once
        , PAtom (LitChar 'b') Once
        , PAtom (LitChar 'i') Once
        , PAtom (LitChar 's') Once
        , PAtom AnyDigit (Exactly 3)
        ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar 'a') Once, PAtom AnyDigit (Exactly 3) ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar 'b') Once, PAtom AnyDigit (Exactly 3) ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar 'c') Once, PAtom AnyDigit (Exactly 3) ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar '/') Once, PAtom (LitChar '2') Once, PAtom AnyDigit (Exactly 3) ]
    ]

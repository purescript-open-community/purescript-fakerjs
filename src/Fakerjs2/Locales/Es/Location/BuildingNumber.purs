module Fakerjs2.Locales.Es.Location.BuildingNumber (building_number) where

import Data.Array.NonEmpty (NonEmptyArray)
import Fakerjs2.Helpers.FromRegExp.Types (Atom(..), Quantifier(..), TypeSafePattern(..))
import Unsafe.Coerce (unsafeCoerce)

building_number =
  ( unsafeCoerce
      :: Array (NonEmptyArray TypeSafePattern) -> NonEmptyArray (NonEmptyArray TypeSafePattern)
  )
    [ (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar ' ') Once
        , PAtom (LitChar '.') Once
        , PAtom (LitChar '/') Once
        , PAtom (LitChar 'n') Once
        , PAtom (LitChar 's') Once
        ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar ' ') Once, PAtom (LitChar ',') Once, PAtom AnyDigit Once ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar ' ') Once, PAtom (LitChar ',') Once, PAtom AnyDigit (Exactly 2) ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar ' ') Once, PAtom AnyDigit Once ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar ' ') Once, PAtom AnyDigit (Exactly 2) ]
    ]

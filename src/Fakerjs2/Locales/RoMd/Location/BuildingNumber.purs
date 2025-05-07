module Fakerjs2.Locales.RoMd.Location.BuildingNumber (building_number) where

import Data.Array.NonEmpty (NonEmptyArray)
import Fakerjs2.Helpers.FromRegExp.Types (Atom(..), Quantifier(..), TypeSafePattern(..))
import Unsafe.Coerce (unsafeCoerce)

building_number =
  ( unsafeCoerce
      :: Array (NonEmptyArray TypeSafePattern) -> NonEmptyArray (NonEmptyArray TypeSafePattern)
  )
    [ (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar ' ') Once
        , PAtom (LitChar 'B') Once
        , PAtom (LitChar 'c') Once
        , PAtom (LitChar 'l') Once
        , PAtom (LitChar 'o') Once
        , PAtom AnyDigit (Exactly 2)
        ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar ' ') Once
        , PAtom (LitChar '/') Once
        , PAtom (LitChar 'B') Once
        , PAtom (LitChar 'c') Once
        , PAtom (LitChar 'l') Once
        , PAtom (LitChar 'o') Once
        , PAtom AnyDigit (Exactly 4)
        ]
    ]

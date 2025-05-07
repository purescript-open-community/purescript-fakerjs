module Fakerjs2.Locales.Nl.Location.Postcode (postcode) where

import Data.Array.NonEmpty (NonEmptyArray)
import Fakerjs2.Helpers.FromRegExp.Types (Atom(..), Quantifier(..), TypeSafePattern(..))
import Unsafe.Coerce (unsafeCoerce)

postcode =
  ( unsafeCoerce
      :: Array (NonEmptyArray TypeSafePattern) -> NonEmptyArray (NonEmptyArray TypeSafePattern)
  )
    [ (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar ' ') Once
        , PAtom (LitChar '1') Once
        , PAtom AnyAlphabetCharUppercase (Exactly 2)
        , PAtom AnyDigit (Exactly 3)
        ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar ' ') Once
        , PAtom (LitChar '2') Once
        , PAtom AnyAlphabetCharUppercase (Exactly 2)
        , PAtom AnyDigit (Exactly 3)
        ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar ' ') Once
        , PAtom (LitChar '3') Once
        , PAtom AnyAlphabetCharUppercase (Exactly 2)
        , PAtom AnyDigit (Exactly 3)
        ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar ' ') Once
        , PAtom (LitChar '4') Once
        , PAtom AnyAlphabetCharUppercase (Exactly 2)
        , PAtom AnyDigit (Exactly 3)
        ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar ' ') Once
        , PAtom (LitChar '5') Once
        , PAtom AnyAlphabetCharUppercase (Exactly 2)
        , PAtom AnyDigit (Exactly 3)
        ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar ' ') Once
        , PAtom (LitChar '6') Once
        , PAtom AnyAlphabetCharUppercase (Exactly 2)
        , PAtom AnyDigit (Exactly 3)
        ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar ' ') Once
        , PAtom (LitChar '7') Once
        , PAtom AnyAlphabetCharUppercase (Exactly 2)
        , PAtom AnyDigit (Exactly 3)
        ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar ' ') Once
        , PAtom (LitChar '8') Once
        , PAtom AnyAlphabetCharUppercase (Exactly 2)
        , PAtom AnyDigit (Exactly 3)
        ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar ' ') Once
        , PAtom (LitChar '9') Once
        , PAtom AnyAlphabetCharUppercase (Exactly 2)
        , PAtom AnyDigit (Exactly 3)
        ]
    ]

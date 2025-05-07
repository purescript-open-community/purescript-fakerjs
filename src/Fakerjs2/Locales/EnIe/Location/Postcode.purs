module Fakerjs2.Locales.EnIe.Location.Postcode (postcode) where

import Data.Array.NonEmpty (NonEmptyArray)
import Fakerjs2.Helpers.FromRegExp.Types (Atom(..), Quantifier(..), TypeSafePattern(..))
import Unsafe.Coerce (unsafeCoerce)

postcode =
  ( unsafeCoerce
      :: Array (NonEmptyArray TypeSafePattern) -> NonEmptyArray (NonEmptyArray TypeSafePattern)
  )
    [ (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar ' ') Once
        , PAtom (LitChar 'A') Once
        , PAtom AnyDigit (Exactly 2)
        , PAtom AnyAlphabetCharOrDecimal (Exactly 4)
        ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar ' ') Once
        , PAtom (LitChar 'D') Once
        , PAtom AnyDigit (Exactly 2)
        , PAtom AnyAlphabetCharOrDecimal (Exactly 4)
        ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar ' ') Once
        , PAtom (LitChar 'E') Once
        , PAtom AnyDigit (Exactly 2)
        , PAtom AnyAlphabetCharOrDecimal (Exactly 4)
        ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar ' ') Once
        , PAtom (LitChar 'F') Once
        , PAtom AnyDigit (Exactly 2)
        , PAtom AnyAlphabetCharOrDecimal (Exactly 4)
        ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar ' ') Once
        , PAtom (LitChar 'H') Once
        , PAtom AnyDigit (Exactly 2)
        , PAtom AnyAlphabetCharOrDecimal (Exactly 4)
        ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar ' ') Once
        , PAtom (LitChar 'K') Once
        , PAtom AnyDigit (Exactly 2)
        , PAtom AnyAlphabetCharOrDecimal (Exactly 4)
        ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar ' ') Once
        , PAtom (LitChar 'N') Once
        , PAtom AnyDigit (Exactly 2)
        , PAtom AnyAlphabetCharOrDecimal (Exactly 4)
        ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar ' ') Once
        , PAtom (LitChar 'P') Once
        , PAtom AnyDigit (Exactly 2)
        , PAtom AnyAlphabetCharOrDecimal (Exactly 4)
        ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar ' ') Once
        , PAtom (LitChar 'R') Once
        , PAtom AnyDigit (Exactly 2)
        , PAtom AnyAlphabetCharOrDecimal (Exactly 4)
        ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar ' ') Once
        , PAtom (LitChar 'T') Once
        , PAtom AnyDigit (Exactly 2)
        , PAtom AnyAlphabetCharOrDecimal (Exactly 4)
        ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar ' ') Once
        , PAtom (LitChar 'V') Once
        , PAtom AnyDigit (Exactly 2)
        , PAtom AnyAlphabetCharOrDecimal (Exactly 4)
        ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar ' ') Once
        , PAtom (LitChar 'W') Once
        , PAtom AnyDigit (Exactly 2)
        , PAtom AnyAlphabetCharOrDecimal (Exactly 4)
        ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar ' ') Once
        , PAtom (LitChar 'X') Once
        , PAtom AnyDigit (Exactly 2)
        , PAtom AnyAlphabetCharOrDecimal (Exactly 4)
        ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar ' ') Once
        , PAtom (LitChar 'Y') Once
        , PAtom AnyDigit (Exactly 2)
        , PAtom AnyAlphabetCharOrDecimal (Exactly 4)
        ]
    ]

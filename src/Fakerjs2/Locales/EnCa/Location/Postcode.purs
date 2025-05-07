module Fakerjs2.Locales.EnCa.Location.Postcode (postcode) where

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
        , PAtom AnyAlphabetCharUppercase (Exactly 2)
        , PAtom AnyDigit (Exactly 3)
        ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar ' ') Once
        , PAtom (LitChar 'B') Once
        , PAtom AnyAlphabetCharUppercase (Exactly 2)
        , PAtom AnyDigit (Exactly 3)
        ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar ' ') Once
        , PAtom (LitChar 'C') Once
        , PAtom AnyAlphabetCharUppercase (Exactly 2)
        , PAtom AnyDigit (Exactly 3)
        ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar ' ') Once
        , PAtom (LitChar 'E') Once
        , PAtom AnyAlphabetCharUppercase (Exactly 2)
        , PAtom AnyDigit (Exactly 3)
        ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar ' ') Once
        , PAtom (LitChar 'G') Once
        , PAtom AnyAlphabetCharUppercase (Exactly 2)
        , PAtom AnyDigit (Exactly 3)
        ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar ' ') Once
        , PAtom (LitChar 'H') Once
        , PAtom AnyAlphabetCharUppercase (Exactly 2)
        , PAtom AnyDigit (Exactly 3)
        ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar ' ') Once
        , PAtom (LitChar 'J') Once
        , PAtom AnyAlphabetCharUppercase (Exactly 2)
        , PAtom AnyDigit (Exactly 3)
        ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar ' ') Once
        , PAtom (LitChar 'K') Once
        , PAtom AnyAlphabetCharUppercase (Exactly 2)
        , PAtom AnyDigit (Exactly 3)
        ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar ' ') Once
        , PAtom (LitChar 'L') Once
        , PAtom AnyAlphabetCharUppercase (Exactly 2)
        , PAtom AnyDigit (Exactly 3)
        ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar ' ') Once
        , PAtom (LitChar 'M') Once
        , PAtom AnyAlphabetCharUppercase (Exactly 2)
        , PAtom AnyDigit (Exactly 3)
        ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar ' ') Once
        , PAtom (LitChar 'N') Once
        , PAtom AnyAlphabetCharUppercase (Exactly 2)
        , PAtom AnyDigit (Exactly 3)
        ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar ' ') Once
        , PAtom (LitChar 'P') Once
        , PAtom AnyAlphabetCharUppercase (Exactly 2)
        , PAtom AnyDigit (Exactly 3)
        ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar ' ') Once
        , PAtom (LitChar 'R') Once
        , PAtom AnyAlphabetCharUppercase (Exactly 2)
        , PAtom AnyDigit (Exactly 3)
        ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar ' ') Once
        , PAtom (LitChar 'S') Once
        , PAtom AnyAlphabetCharUppercase (Exactly 2)
        , PAtom AnyDigit (Exactly 3)
        ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar ' ') Once
        , PAtom (LitChar 'T') Once
        , PAtom AnyAlphabetCharUppercase (Exactly 2)
        , PAtom AnyDigit (Exactly 3)
        ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar ' ') Once
        , PAtom (LitChar 'V') Once
        , PAtom AnyAlphabetCharUppercase (Exactly 2)
        , PAtom AnyDigit (Exactly 3)
        ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar ' ') Once
        , PAtom (LitChar 'X') Once
        , PAtom AnyAlphabetCharUppercase (Exactly 2)
        , PAtom AnyDigit (Exactly 3)
        ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar ' ') Once
        , PAtom (LitChar 'Y') Once
        , PAtom AnyAlphabetCharUppercase (Exactly 2)
        , PAtom AnyDigit (Exactly 3)
        ]
    ]

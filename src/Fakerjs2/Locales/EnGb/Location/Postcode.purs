module Fakerjs2.Locales.EnGb.Location.Postcode (postcode) where

import Data.Array.NonEmpty (NonEmptyArray)
import Fakerjs2.Helpers.FromRegExp.Types (Atom(..), Quantifier(..), TypeSafePattern(..))
import Unsafe.Coerce (unsafeCoerce)

postcode =
  ( unsafeCoerce
      :: Array (NonEmptyArray TypeSafePattern) -> NonEmptyArray (NonEmptyArray TypeSafePattern)
  )
    [ (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar ' ') Once
        , PAtom AnyAlphabetCharUppercase (Exactly 4)
        , PAtom AnyDigit (Exactly 2)
        ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar ' ') Once
        , PAtom AnyAlphabetCharUppercase (Exactly 4)
        , PAtom AnyDigit (Exactly 3)
        ]
    ]

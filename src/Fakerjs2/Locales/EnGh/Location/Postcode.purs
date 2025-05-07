module Fakerjs2.Locales.EnGh.Location.Postcode (postcode) where

import Data.Array.NonEmpty (NonEmptyArray)
import Fakerjs2.Helpers.FromRegExp.Types (Atom(..), Quantifier(..), TypeSafePattern(..))
import Unsafe.Coerce (unsafeCoerce)

postcode =
  ( unsafeCoerce
      :: Array (NonEmptyArray TypeSafePattern) -> NonEmptyArray (NonEmptyArray TypeSafePattern)
  )
    [ (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar '-') (Exactly 2)
        , PAtom AnyAlphabetCharUppercase (Exactly 2)
        , PAtom AnyDigit (Exactly 7)
        ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar '-') (Exactly 2)
        , PAtom AnyAlphabetCharUppercase (Exactly 2)
        , PAtom AnyDigit (Exactly 8)
        ]
    ]

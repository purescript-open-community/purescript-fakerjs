module Fakerjs2.Locales.RoMd.Location.Postcode (postcode) where

import Data.Array.NonEmpty (NonEmptyArray)
import Fakerjs2.Helpers.FromRegExp.Types (Atom(..), Quantifier(..), TypeSafePattern(..))
import Unsafe.Coerce (unsafeCoerce)

postcode =
  ( unsafeCoerce
      :: Array (NonEmptyArray TypeSafePattern) -> NonEmptyArray (NonEmptyArray TypeSafePattern)
  )
    [ (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar '-') Once
        , PAtom (LitChar 'D') Once
        , PAtom (LitChar 'M') Once
        , PAtom AnyDigit (Exactly 4)
        ]
    ]

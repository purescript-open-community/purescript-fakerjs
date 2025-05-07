module Fakerjs2.Locales.FrCh.Location.Postcode (postcode) where

import Data.Array.NonEmpty (NonEmptyArray)
import Fakerjs2.Helpers.FromRegExp.Types (Atom(..), Quantifier(..), TypeSafePattern(..))
import Unsafe.Coerce (unsafeCoerce)

postcode =
  ( unsafeCoerce
      :: Array (NonEmptyArray TypeSafePattern) -> NonEmptyArray (NonEmptyArray TypeSafePattern)
  )
    [ (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar '1') Once, PAtom AnyDigit (Exactly 3) ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar '2') Once, PAtom AnyDigit (Exactly 3) ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar '3') Once, PAtom AnyDigit (Exactly 3) ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar '4') Once, PAtom AnyDigit (Exactly 3) ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar '5') Once, PAtom AnyDigit (Exactly 3) ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar '6') Once, PAtom AnyDigit (Exactly 3) ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar '7') Once, PAtom AnyDigit (Exactly 3) ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar '8') Once, PAtom AnyDigit (Exactly 3) ]
    , (unsafeCoerce :: Array TypeSafePattern -> NonEmptyArray TypeSafePattern)
        [ PAtom (LitChar '9') Once, PAtom AnyDigit (Exactly 3) ]
    ]

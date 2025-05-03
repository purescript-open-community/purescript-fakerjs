module Fakerjs2.Locales.Ur.Vehicle.Manufacturer (manufacturer) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Manufacturer)
import Unsafe.Coerce (unsafeCoerce)

manufacturer :: Manufacturer
manufacturer = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "ا\x000653ستن مارٹن", "بی ایم ڈبلیو", "بینٹلے", "جیپ", "فراری", "مرسیڈیز", "مزدا", "ہنڈا" ]

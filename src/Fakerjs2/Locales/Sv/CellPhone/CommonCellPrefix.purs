module Fakerjs2.Locales.Sv.CellPhone.CommonCellPrefix (common_cell_prefix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Unsafe.Coerce (unsafeCoerce)

common_cell_prefix = (unsafeCoerce :: Array Int -> NonEmptyArray Int) [ 56, 62, 59 ]

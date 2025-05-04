module Fakerjs2.Locales.ZhCn.Book.Format (format) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

format = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "平装", "有声书", "电子书", "精装" ]

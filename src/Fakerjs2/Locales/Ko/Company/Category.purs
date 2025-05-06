module Fakerjs2.Locales.Ko.Company.Category (category) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

category = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "게임즈", "공사", "그룹", "물산", "연구소", "은행", "전자", "중공업", "증권", "코리아" ]

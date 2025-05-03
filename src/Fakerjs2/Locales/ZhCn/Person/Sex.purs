module Fakerjs2.Locales.ZhCn.Person.Sex (sex) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Sex)
import Unsafe.Coerce (unsafeCoerce)

sex :: Sex
sex = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "女", "男" ]

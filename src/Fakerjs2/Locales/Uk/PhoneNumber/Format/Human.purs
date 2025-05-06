module Fakerjs2.Locales.Uk.PhoneNumber.Format.Human (human) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

human = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "(044) ###-##-##"
  , "(050) ###-##-##"
  , "(063) ###-##-##"
  , "(066) ###-##-##"
  , "(073) ###-##-##"
  , "(091) ###-##-##"
  , "(092) ###-##-##"
  , "(093) ###-##-##"
  , "(094) ###-##-##"
  , "(095) ###-##-##"
  , "(096) ###-##-##"
  , "(097) ###-##-##"
  , "(098) ###-##-##"
  , "(099) ###-##-##"
  ]

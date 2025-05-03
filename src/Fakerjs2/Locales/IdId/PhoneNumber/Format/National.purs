module Fakerjs2.Locales.IdId.PhoneNumber.Format.National (national) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (National)
import Unsafe.Coerce (unsafeCoerce)

national :: National
national = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "(02##) ######"
  , "(02##) #######"
  , "(03##) #######"
  , "(04##) #######"
  , "(05##) #######"
  , "(06##) #######"
  , "(07##) #######"
  , "(09##) #######"
  , "(02##) ########"
  , "(03##) ########"
  , "(04##) ########"
  , "(05##) ########"
  , "(06##) ########"
  , "(07##) ########"
  , "(09##) ########"
  , "08##-###-###"
  , "08##-####-###"
  , "08##-####-####"
  ]

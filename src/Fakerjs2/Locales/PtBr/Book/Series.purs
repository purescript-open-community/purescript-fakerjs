module Fakerjs2.Locales.PtBr.Book.Series (series) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Series)
import Unsafe.Coerce (unsafeCoerce)

series :: Series
series = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Ed Mort"
  , "O Tempo e o Vento"
  , "Os Subterrâneos da Liberdade"
  , "Série Vaga-Lume"
  , "Sítio do Picapau Amarelo"
  , "Trilogia do Descobrimento"
  ]

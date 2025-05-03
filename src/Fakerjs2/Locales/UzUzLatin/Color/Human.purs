module Fakerjs2.Locales.UzUzLatin.Color.Human (human) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Human)
import Unsafe.Coerce (unsafeCoerce)

human :: Human
human = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "binofsha"
  , "fayruz rang"
  , "ko'k"
  , "ko'k-binofsha rang"
  , "krem rang"
  , "kulrang"
  , "kumush rang"
  , "limon rang"
  , "moviy"
  , "olov rang"
  , "oltin rang"
  , "oq"
  , "osmon rang"
  , "pushti"
  , "qizg'ish to'q sariq"
  , "qizil"
  , "qizil-kulrang"
  , "qizil-siyoh binofsha"
  , "qora"
  , "sariq"
  , "sariq-kulrang"
  , "siyoh binofsha"
  , "to'q sariq"
  , "yashil"
  , "zaytun rang"
  ]

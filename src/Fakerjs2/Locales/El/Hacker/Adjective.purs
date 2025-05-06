module Fakerjs2.Locales.El.Hacker.Adjective (adjective) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

adjective = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "1080p"
  , "ανοιχτή πηγή"
  , "ασύρματο"
  , "εικονική"
  , "κινητό"
  , "οδηγός"
  , "οπτική"
  , "πρωτογενής"
  , "ψηφιακή"
  ]

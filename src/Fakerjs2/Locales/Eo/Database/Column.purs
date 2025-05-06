module Fakerjs2.Locales.Eo.Database.Column (column) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

column = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "grupo"
  , "identigilo"
  , "kategorio"
  , "komento"
  , "nomo"
  , "pasvorto"
  , "profilbildo"
  , "stato"
  , "telefonnumero"
  , "titolo"
  ]

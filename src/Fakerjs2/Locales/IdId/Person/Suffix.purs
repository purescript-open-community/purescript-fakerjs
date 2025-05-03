module Fakerjs2.Locales.IdId.Person.Suffix (suffix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Suffix)
import Unsafe.Coerce (unsafeCoerce)

suffix :: Suffix
suffix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "S.Ked"
  , "S.Gz"
  , "S.Pt"
  , "S.IP"
  , "S.E.I"
  , "S.E."
  , "S.Kom"
  , "S.H."
  , "S.T."
  , "S.Pd"
  , "S.Psi"
  , "S.I.Kom"
  , "S.Sos"
  , "S.Farm"
  , "M.M."
  , "M.Kom."
  , "M.TI."
  , "M.Pd"
  , "M.Farm"
  , "M.Ak"
  ]

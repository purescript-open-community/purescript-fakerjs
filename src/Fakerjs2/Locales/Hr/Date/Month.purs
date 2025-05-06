module Fakerjs2.Locales.Hr.Date.Month (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Maybe (Maybe(..))
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

abbr = Just
  ( (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "kol", "lip", "lis", "ožu", "pro", "ruj", "sij", "srp", "stu", "svi", "tra", "vel" ]
  )

wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "kolovoz"
  , "lipanj"
  , "listopad"
  , "ožujak"
  , "prosinac"
  , "rujan"
  , "siječanj"
  , "srpanj"
  , "studeni"
  , "svibanj"
  , "travanj"
  , "veljača"
  ]

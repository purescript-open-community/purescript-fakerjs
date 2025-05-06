module Fakerjs2.Locales.CsCz.Date.Month (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Maybe (Maybe(..))
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

abbr = Just
  ( (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "Bře", "Dub", "Kvě", "Led", "Lis", "Pro", "Srp", "Zář", "Úno", "Čer", "Črc", "Říj" ]
  )

wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Březen"
  , "Duben"
  , "Květen"
  , "Leden"
  , "Listopad"
  , "Prosinec"
  , "Srpen"
  , "Září"
  , "Únor"
  , "Červen"
  , "Červenec"
  , "Říjen"
  ]

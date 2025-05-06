module Fakerjs2.Locales.Eo.Person.Gender (gender) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

gender = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "androgino"
  , "cisgenra virino"
  , "cisgenra viro"
  , "cisgenrulo"
  , "cisulo"
  , "cisvirino"
  , "cisviro"
  , "dugenrulo"
  , "duspiritulo"
  , "genrokviro"
  , "hiĝro"
  , "interseksulo"
  , "kviro"
  , "neduumulo"
  , "sengenrulo"
  , "transgenra virino"
  , "transgenra viro"
  , "transgenrulo"
  , "transulo"
  , "transvirino"
  , "transviro"
  , "travesĉio"
  , "trigenrulo"
  , "virino"
  , "viro"
  ]

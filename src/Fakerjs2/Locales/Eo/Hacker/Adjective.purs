module Fakerjs2.Locales.Eo.Hacker.Adjective (adjective) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Adjective)
import Unsafe.Coerce (unsafeCoerce)

adjective :: Adjective
adjective = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "altkvalita"
  , "aŭtomata"
  , "bludenta"
  , "cifereca"
  , "defaŭlta"
  , "enreta"
  , "helpa"
  , "hibrida"
  , "interna"
  , "malfermitkoda"
  , "nesinkrona"
  , "neŭrona"
  , "nuba"
  , "optika"
  , "plenekrana"
  , "plurbajta"
  , "plurplatforma"
  , "portebla"
  , "realtempa"
  , "redunda"
  , "sendrata"
  , "solidstata"
  , "universala"
  , "virtuala"
  , "ĉefa"
  ]

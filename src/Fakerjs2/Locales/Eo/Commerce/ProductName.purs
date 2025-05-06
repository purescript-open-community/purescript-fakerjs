module Fakerjs2.Locales.Eo.Commerce.ProductName (adjective, material, product) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

adjective = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "bela"
  , "bona"
  , "eleganta"
  , "elektra"
  , "ergonomia"
  , "inteligenta"
  , "luksa"
  , "malaĉa"
  , "malgranda"
  , "manfarita"
  , "mirinda"
  , "moderna"
  , "mojosa"
  , "nekredebla"
  , "oportuna"
  , "ordinara"
  , "populara"
  , "praktika"
  , "rafinita"
  , "recikligita"
  , "rustika"
  , "senmarka"
  , "tajlorita"
  , "taŭga"
  , "unika"
  ]

material = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "betona"
  , "bronza"
  , "ceramika"
  , "freŝa"
  , "frostigita"
  , "granita"
  , "kartona"
  , "kaŭĉuka"
  , "kotona"
  , "ligna"
  , "metala"
  , "plasta"
  , "trikita"
  , "vitra"
  , "ŝtala"
  ]

product = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "aŭto"
  , "biciklo"
  , "ekrano"
  , "flago"
  , "ganto"
  , "klavaro"
  , "komputilo"
  , "mantuko"
  , "muso"
  , "nomŝildo"
  , "pantalono"
  , "pilko"
  , "sako"
  , "sapo"
  , "seĝo"
  , "tablo"
  , "valizo"
  , "ĉapelo"
  , "ĉemizo"
  , "ŝuo"
  ]

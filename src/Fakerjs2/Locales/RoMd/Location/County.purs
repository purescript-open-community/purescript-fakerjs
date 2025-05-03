module Fakerjs2.Locales.RoMd.Location.County (county) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (County)
import Unsafe.Coerce (unsafeCoerce)

county :: County
county = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Anenii Noi"
  , "Basarabeasca"
  , "Bender"
  , "Briceni"
  , "Cahul"
  , "Calarasi"
  , "Cantemir"
  , "Causeni"
  , "Chisinau"
  , "Cimislia"
  , "Criuleni"
  , "Donduseni"
  , "Drochia"
  , "Dubasari"
  , "Edinet"
  , "Falesti"
  , "Floresti"
  , "Glodeni"
  , "Hincesti"
  , "Ialoveni"
  , "Leova"
  , "Nisporeni"
  , "Ocnita"
  , "Orhei"
  , "Rezina"
  , "Riscani"
  , "Singerei"
  , "Soldanesti"
  , "Soroca"
  , "Stefan-Voda"
  , "Straseni"
  , "Taraclia"
  , "Telenesti"
  , "Ungheni"
  ]

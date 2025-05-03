module Fakerjs2.Locales.UzUzLatin.Person.BioParts (bio_parts) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (BioParts)
import Unsafe.Coerce (unsafeCoerce)

bio_parts :: BioParts
bio_parts = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "bitiruvchi"
  , "biznes egasi"
  , "blogger"
  , "do‘st"
  , "dizayner"
  , "dasturchi"
  , "ekolog"
  , "faoliyatchi"
  , "falsafachi"
  , "film ishqibi"
  , "fotoqrafer"
  , "geymer"
  , "ilmshunos"
  , "jamolchi"
  , "kinorejissyor"
  , "model"
  , "muallif"
  , "mualim"
  , "muhandis"
  , "musiqachi"
  , "o‘ila odobi"
  , "o‘qituvchi"
  , "o‘yinchim"
  , "odam"
  , "qo‘shiqchi"
  , "rivojlanuvchi"
  , "san'atkor"
  , "sayahatchi"
  , "strimer"
  , "tadbirkor"
  , "talaba"
  , "tayyorlashchi"
  , "tuzuvchi"
  , "vatanparvar"
  , "veteran"
  ]

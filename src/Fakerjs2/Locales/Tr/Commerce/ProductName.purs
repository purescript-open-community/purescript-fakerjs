module Fakerjs2.Locales.Tr.Commerce.ProductName (adjective, material, product) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

adjective = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Dondurulmuş"
  , "El Yapımı"
  , "El Üretimi"
  , "Ergonomik"
  , "Genel"
  , "Harika"
  , "Küçük"
  , "Kırsal"
  , "Lezzetli"
  , "Lisanslı"
  , "Markalanmamış"
  , "Muhteşem"
  , "Mükemmel"
  , "Pratik"
  , "Rafine"
  , "Taze"
  , "Yumuşak"
  , "Zeki"
  , "İnanılmaz"
  , "Şık"
  ]

material = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Ahşap"
  , "Altın"
  , "Alüminyum"
  , "Bambu"
  , "Beton"
  , "Granit"
  , "Kauçuk"
  , "Mermer"
  , "Metal"
  , "Pamuk"
  , "Plastik"
  , "Seramik"
  , "Çelik"
  , "İpek"
  ]

product = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Araba"
  , "Ayakkabı"
  , "Balık"
  , "Bilgisayar"
  , "Bisiklet"
  , "Cips"
  , "Eldiven"
  , "Fare"
  , "Gömlek"
  , "Havlu"
  , "Kayseri Pastırması"
  , "Pantolon"
  , "Peynir"
  , "Pizza"
  , "Sabun"
  , "Salata"
  , "Sandalye"
  , "Sosis"
  , "Tablo"
  , "Tavuk"
  , "Top"
  , "Tuna"
  , "Tuş Takımı"
  , "Şapka"
  ]

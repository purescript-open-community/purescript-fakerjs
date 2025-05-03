module Fakerjs2.Locales.Tr.Commerce.Department (department) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Department)
import Unsafe.Coerce (unsafeCoerce)

department :: Department
department = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Aletler"
  , "Ayakkabı"
  , "Açık Hava"
  , "Bahçe"
  , "Bakkal"
  , "Bebek"
  , "Bilgisayarlar"
  , "Elektronik"
  , "Ev"
  , "Filmler"
  , "Giyim"
  , "Güzellik"
  , "Kitaplar"
  , "Mücevher"
  , "Müzikler"
  , "Otomotiv"
  , "Oyuncaklar"
  , "Oyunlar"
  , "Sanayi"
  , "Sağlık"
  , "Spor Dalları"
  , "Çocuklar"
  ]

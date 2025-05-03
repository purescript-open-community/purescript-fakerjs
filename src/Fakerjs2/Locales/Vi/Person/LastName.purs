module Fakerjs2.Locales.Vi.Person.LastName (generic) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (LastNameGeneric)
import Unsafe.Coerce (unsafeCoerce)

generic :: LastNameGeneric
generic = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Bùi"
  , "Dương"
  , "Hoàng"
  , "Hà"
  , "Hồ"
  , "Lâm"
  , "Lê"
  , "Lý"
  , "Mai"
  , "Nguyễn"
  , "Ngô"
  , "Phan"
  , "Phùng"
  , "Phạm"
  , "Trương"
  , "Trần"
  , "Trịnh"
  , "Tô"
  , "Tăng"
  , "Vũ"
  , "Vương"
  , "Đinh"
  , "Đoàn"
  , "Đào"
  , "Đặng"
  , "Đỗ"
  ]

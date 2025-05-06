module Fakerjs2.Locales.Uk.Location.StreetName (street_name) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

street_name = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Зелена"
  , "Молодіжна"
  , "Городоцька"
  , "Стрийська"
  , "Вузька"
  , "Нижанківського"
  , "Староміська"
  , "Ліста"
  , "Вічева"
  , "Брюховичів"
  , "Винників"
  , "Рудного"
  , "Коліївщини"
  ]

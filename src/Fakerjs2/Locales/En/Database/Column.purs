module Fakerjs2.Locales.En.Database.Column (column) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Column)
import Unsafe.Coerce (unsafeCoerce)

column :: Column
column = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "avatar"
  , "category"
  , "comment"
  , "createdAt"
  , "email"
  , "group"
  , "id"
  , "name"
  , "password"
  , "phone"
  , "status"
  , "title"
  , "token"
  , "updatedAt"
  ]

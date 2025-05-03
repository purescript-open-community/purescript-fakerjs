module Fakerjs2.Locales.Base.Database.Type (type_) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Type)
import Unsafe.Coerce (unsafeCoerce)

type_ :: Type
type_ = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "bigint"
  , "binary"
  , "bit"
  , "blob"
  , "boolean"
  , "date"
  , "datetime"
  , "decimal"
  , "double"
  , "enum"
  , "float"
  , "geometry"
  , "int"
  , "mediumint"
  , "point"
  , "real"
  , "serial"
  , "set"
  , "smallint"
  , "text"
  , "time"
  , "timestamp"
  , "tinyint"
  , "varchar"
  ]

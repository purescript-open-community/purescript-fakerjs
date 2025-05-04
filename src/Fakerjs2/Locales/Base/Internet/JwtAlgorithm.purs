module Fakerjs2.Locales.Base.Internet.JwtAlgorithm (jwt_algorithm) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

jwt_algorithm = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "HS256"
  , "HS384"
  , "HS512"
  , "RS256"
  , "RS384"
  , "RS512"
  , "ES256"
  , "ES384"
  , "ES512"
  , "PS256"
  , "PS384"
  , "PS512"
  , "none"
  ]

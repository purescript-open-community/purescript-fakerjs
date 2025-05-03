module Fakerjs2Generate.Javascript where

import Prelude

import Control.Alt ((<|>))
import Data.Argonaut.Core as J
import Data.Array.NonEmpty (NonEmptyArray)
import Data.Codec.Argonaut (encode) as C
import Data.Codec.Argonaut.Common (JsonCodec, JsonDecodeError(..), codec', decode, encode, int, nonEmptyArray, nonEmptyString, null, strMap, string) as CA
import Data.Either (Either(..))
import Data.Generic.Rep (class Generic)
import Data.Map (Map)
import Data.Show.Generic (genericShow)
import Data.String.NonEmpty (NonEmptyString)
import Partial.Unsafe (unsafeCrashWith)

-- allPossibleTypes [Javascript_Null, Javascript_EmptyString] []
-- allPossibleTypes :: Array Javascript ->

data Javascript
  = Javascript_Null
  | Javascript_EmptyString
  | Javascript_Int Int
  | Javascript_NonEmptyString NonEmptyString
  | Javascript_NonEmptyArray (NonEmptyArray Javascript)
  | Javascript_Map (Map String Javascript)

derive instance Eq Javascript
derive instance Ord Javascript
derive instance Generic Javascript _
instance Show Javascript where
  show x = genericShow x

javascriptCodec ∷ CA.JsonCodec Javascript
javascriptCodec = CA.codec' decode encode
  where
  decode ∷ J.Json → Either CA.JsonDecodeError Javascript
  decode j =
    (CA.decode CA.null j *> pure Javascript_Null)
      <|>
        ( do
            s ← CA.decode CA.string j
            if s == "" then pure Javascript_EmptyString
            else Left (CA.UnexpectedValue j)
        )
      <|> (Javascript_Int <$> CA.decode CA.int j)
      <|> (Javascript_NonEmptyString <$> CA.decode CA.nonEmptyString j)
      <|> (Javascript_NonEmptyArray <$> CA.decode (CA.nonEmptyArray javascriptCodec) j)
      <|> (Javascript_Map <$> CA.decode (CA.strMap javascriptCodec) j)

  encode ∷ Javascript → J.Json
  encode x = unsafeCrashWith "not implemented"

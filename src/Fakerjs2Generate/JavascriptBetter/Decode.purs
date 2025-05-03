module Fakerjs2Generate.JavascriptBetter.Decode where

import Fakerjs2Generate.JavascriptBetter.JavascriptError
import Prelude
import Prelude

import Control.Alt ((<|>))
import Data.Array (elem)
import Data.Array as Array
import Data.Array.NonEmpty (NonEmptyArray)
import Data.Bifunctor (lmap)
import Data.Either (Either(..))
import Data.Either (Either(..))
import Data.Foldable (foldMap)
import Data.Generic.Rep (class Generic)
import Data.List as List
import Data.Map (Map)
import Data.Map as Map
import Data.Maybe (Maybe(..), maybe)
import Data.Set as Set
import Data.Show.Generic (genericShow)
import Data.String as String
import Data.String as String
import Data.String.NonEmpty (NonEmptyString)
import Data.String.NonEmpty as NonEmptyString
import Data.Symbol (class IsSymbol)
import Data.Traversable (sequence, traverse)
import Fakerjs2Generate.Javascript (Javascript(..))
import Foreign.Object as Object
import Prim.Row as Row
import Prim.RowList as RL
import Record as Record
import Type.Prelude as Symbol
import Type.Proxy (Proxy(..))
import Unsafe.Coerce (unsafeCoerce)
import Fakerjs2Generate.JavascriptBetter.Decode.Impl

type Weighted a = { value :: a, weight :: Int }
type NameCodeSymbolNumericCode = { name :: NonEmptyString, code :: NonEmptyString, symbol :: String, numericCode :: NonEmptyString }

data JavascriptBetterMapValue
  = JavascriptBetterMapValue_Null
  | JavascriptBetterMapValue_EmptyString
  | JavascriptBetterMapValue_Int Int
  | JavascriptBetterMapValue_NonEmptyString NonEmptyString
  | JavascriptBetterMapValue_NonEmptyArray_NonEmptyString (NonEmptyArray NonEmptyString)

derive instance Eq JavascriptBetterMapValue
derive instance Ord JavascriptBetterMapValue
derive instance Generic JavascriptBetterMapValue _
instance Show JavascriptBetterMapValue where
  show = genericShow

data JavascriptBetter
  = JavascriptBetter_Null
  | JavascriptBetter_NonEmptyArray_String (NonEmptyArray String)
  | JavascriptBetter_NonEmptyArray_NonEmptyString (NonEmptyArray NonEmptyString)
  | JavascriptBetter_NonEmptyArray_Int (NonEmptyArray Int)
  | JavascriptBetter_NonEmptyArray_Map_JavascriptBetterMapValue (NonEmptyArray (Map String JavascriptBetterMapValue))
  | JavascriptBetter_NonEmptyArray_Map_NonEmptyString (NonEmptyArray (Map String NonEmptyString))
  | JavascriptBetter_NonEmptyArray_Weighted_NonEmptyString (NonEmptyArray (Weighted NonEmptyString))
  | JavascriptBetter_NonEmptyArray_NameCodeSymbolNumericCode (NonEmptyArray NameCodeSymbolNumericCode)
  | JavascriptBetter_Map_Map_NonEmptyString (Map String (Map String NonEmptyString))
  | JavascriptBetter_Map_NonEmptyArray_Int (Map String (NonEmptyArray Int))
  | JavascriptBetter_Map_NonEmptyArray_NonEmptyString (Map String (NonEmptyArray NonEmptyString))
  | JavascriptBetter_Map_NonEmptyArray_Weighted (Map String (NonEmptyArray (Weighted NonEmptyString)))
  | JavascriptBetter_Map_NonEmptyString (Map String NonEmptyString)
  | JavascriptBetter_Map_JavascriptBetterMapValue (Map String JavascriptBetterMapValue)
  | JavascriptBetter_Map_Extensions (Map String { extensions :: NonEmptyArray NonEmptyString })

derive instance Eq JavascriptBetter
derive instance Ord JavascriptBetter
derive instance Generic JavascriptBetter _
instance Show JavascriptBetter where
  show = genericShow

decodeWeightedOf
  :: forall a
   . Decoder a
  -> Decoder (Weighted a)
decodeWeightedOf decodeA = decodeRecordStrict
  { value: decodeA
  , weight: decodeInt
  }

decodeExtensions :: Decoder { extensions :: NonEmptyArray NonEmptyString }
decodeExtensions = decodeRecordStrict
  { extensions: decodeArrayOf decodeNES
  }

decodeNameCodeSymbolNumericCode :: Decoder NameCodeSymbolNumericCode
decodeNameCodeSymbolNumericCode = decodeRecordStrict
  { name: decodeNES
  , code: decodeNES
  , symbol: decodeString
  , numericCode: decodeNES
  }

decodeBetterMapValue ∷ Decoder JavascriptBetterMapValue
decodeBetterMapValue = case _ of
  Javascript_Null -> pure JavascriptBetterMapValue_Null
  Javascript_EmptyString -> pure JavascriptBetterMapValue_EmptyString
  Javascript_Int i -> pure (JavascriptBetterMapValue_Int i)
  Javascript_NonEmptyString s -> pure (JavascriptBetterMapValue_NonEmptyString s)
  Javascript_NonEmptyArray arr -> JavascriptBetterMapValue_NonEmptyArray_NonEmptyString <$> traverse decodeNES arr
  x -> Left $ JavascriptDecodeError_Named "Expected valid JavascriptBetterMapValue" (JavascriptDecodeError_UnexpectedValue x)

decodeBetter :: Decoder JavascriptBetter
decodeBetter = case _ of
  Javascript_Null -> Right JavascriptBetter_Null
  Javascript_EmptyString -> Left $ JavascriptDecodeError_TypeMismatch "EmptyString"
  Javascript_Int i -> Left $ JavascriptDecodeError_UnexpectedValue (Javascript_Int i)
  Javascript_NonEmptyString s -> Left $ JavascriptDecodeError_UnexpectedValue (Javascript_NonEmptyString s)
  Javascript_NonEmptyArray arr ->
    (JavascriptBetter_NonEmptyArray_NameCodeSymbolNumericCode <$> traverse decodeNameCodeSymbolNumericCode arr)
      <|> (JavascriptBetter_NonEmptyArray_NonEmptyString <$> traverse decodeNES arr)
      <|> (JavascriptBetter_NonEmptyArray_Int <$> traverse decodeInt arr)
      <|> (JavascriptBetter_NonEmptyArray_Weighted_NonEmptyString <$> traverse (decodeWeightedOf decodeNES) arr)
      <|> (JavascriptBetter_NonEmptyArray_Map_NonEmptyString <$> traverse (decodeMapOf decodeNES) arr)
      <|> (JavascriptBetter_NonEmptyArray_Map_JavascriptBetterMapValue <$> traverse (decodeMapOf decodeBetterMapValue) arr)
      <|> (JavascriptBetter_NonEmptyArray_String <$> traverse decodeString arr)
  Javascript_Map m ->
    (JavascriptBetter_Map_Extensions <$> traverse decodeExtensions m)
      <|> (JavascriptBetter_Map_NonEmptyArray_Int <$> traverse (decodeArrayOf decodeInt) m)
      <|> (JavascriptBetter_Map_NonEmptyString <$> traverse decodeNES m)
      <|> (JavascriptBetter_Map_NonEmptyArray_Weighted <$> traverse (decodeArrayOf (decodeWeightedOf decodeNES)) m)
      <|> (JavascriptBetter_Map_Map_NonEmptyString <$> traverse (decodeMapOf decodeNES) m)
      <|> (JavascriptBetter_Map_NonEmptyArray_NonEmptyString <$> traverse (decodeArrayOf decodeNES) m)
      <|> (JavascriptBetter_Map_JavascriptBetterMapValue <$> traverse decodeBetterMapValue m)

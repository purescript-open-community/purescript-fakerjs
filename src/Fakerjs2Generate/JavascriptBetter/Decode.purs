module Fakerjs2Generate.JavascriptBetter where

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

extractNES :: Javascript → Either JavascriptDecodeError NonEmptyString
extractNES = case _ of
  Javascript_NonEmptyString s -> pure s
  x -> Left $ JavascriptDecodeError_Named "NonEmptyString" (JavascriptDecodeError_UnexpectedValue x)

extractInt :: Javascript → Either JavascriptDecodeError Int
extractInt = case _ of
  Javascript_Int i -> pure i
  x -> Left $ JavascriptDecodeError_Named "Int" (JavascriptDecodeError_UnexpectedValue x)

extractArrayOf ∷ forall a. (Javascript → Either JavascriptDecodeError a) -> Javascript → Either JavascriptDecodeError (NonEmptyArray a)
extractArrayOf f = case _ of
  Javascript_NonEmptyArray arr → traverse f arr
  x → Left $ JavascriptDecodeError_Named "NonEmptyArray" (JavascriptDecodeError_UnexpectedValue x)

extractMapOf ∷ forall a. (Javascript → Either JavascriptDecodeError a) → Javascript → Either JavascriptDecodeError (Map String a)
extractMapOf f = case _ of
  Javascript_Map m → traverse f m
  x → Left $ JavascriptDecodeError_Named "Map<String, _>" (JavascriptDecodeError_UnexpectedValue x)

-- | Required field decoder
getField
  :: forall a
   . (Javascript -> Either JavascriptDecodeError a)
  -> String
  -> Map String Javascript
  -> Either JavascriptDecodeError a
getField decoder key m =
  case Map.lookup key m of
    Just v -> lmap (JavascriptDecodeError_AtKey key) (decoder v)
    Nothing -> Left $ JavascriptDecodeError_AtKey key JavascriptDecodeError_MissingValue

-- | Optional field decoder (returns `Nothing` if missing)
getFieldOptional
  :: forall a
   . (Javascript -> Either JavascriptDecodeError a)
  -> String
  -> Map String Javascript
  -> Either JavascriptDecodeError (Maybe a)
getFieldOptional decoder key m =
  case Map.lookup key m of
    Nothing -> pure Nothing
    Just v -> Just <$> lmap (JavascriptDecodeError_AtKey key) (decoder v)

-- | Optional field decoder that also treats `Javascript_Null` as `Nothing`
getFieldOptional'
  :: forall a
   . (Javascript -> Either JavascriptDecodeError a)
  -> String
  -> Map String Javascript
  -> Either JavascriptDecodeError (Maybe a)
getFieldOptional' decoder key m =
  case Map.lookup key m of
    Nothing -> pure Nothing
    Just Javascript_Null -> pure Nothing
    Just v -> Just <$> lmap (JavascriptDecodeError_AtKey key) (decoder v)

extractWeightedOf
  :: forall a
   . (Javascript -> Either JavascriptDecodeError a)
  -> Javascript
  -> Either JavascriptDecodeError (Weighted a)
extractWeightedOf extractA = case _ of
  Javascript_Map m -> do
    value <- getField extractA "value" m
    weight <- getField extractInt "weight" m
    pure { value, weight }
  x -> Left $ JavascriptDecodeError_Named "Expected Map with keys `value` and `weight`" (JavascriptDecodeError_UnexpectedValue x)

extractExtensions :: Javascript -> Either JavascriptDecodeError { extensions :: NonEmptyArray NonEmptyString }
extractExtensions = case _ of
  Javascript_Map m -> do
    extensions <- getField (extractArrayOf extractNES) "extensions" m
    pure { extensions }
  x -> Left $ JavascriptDecodeError_Named "Expected Map with `extensions`" (JavascriptDecodeError_UnexpectedValue x)

extractMapOfBetterMapValue ∷ Javascript → Either JavascriptDecodeError (Map String JavascriptBetterMapValue)
extractMapOfBetterMapValue = case _ of
  Javascript_Map m -> traverse extractBetterMapValue m
  x -> Left $ JavascriptDecodeError_Named "Expected Map<String, JavascriptBetterMapValue>" (JavascriptDecodeError_UnexpectedValue x)

extractBetterMapValue ∷ Javascript → Either JavascriptDecodeError JavascriptBetterMapValue
extractBetterMapValue = case _ of
  Javascript_Null -> pure JavascriptBetterMapValue_Null
  Javascript_EmptyString -> pure JavascriptBetterMapValue_EmptyString
  Javascript_Int i -> pure (JavascriptBetterMapValue_Int i)
  Javascript_NonEmptyString s -> pure (JavascriptBetterMapValue_NonEmptyString s)
  Javascript_NonEmptyArray arr -> JavascriptBetterMapValue_NonEmptyArray_NonEmptyString <$> traverse extractNES arr
  x -> Left $ JavascriptDecodeError_Named "Expected valid JavascriptBetterMapValue" (JavascriptDecodeError_UnexpectedValue x)

extractString :: Javascript → Either JavascriptDecodeError String
extractString = case _ of
  Javascript_NonEmptyString s -> pure (NonEmptyString.toString s)
  Javascript_EmptyString -> pure ""
  x -> Left $ JavascriptDecodeError_Named "Expected String" (JavascriptDecodeError_UnexpectedValue x)

extractNEArrayOfInt :: Javascript → Either JavascriptDecodeError (NonEmptyArray Int)
extractNEArrayOfInt = case _ of
  Javascript_NonEmptyArray arr → traverse extractInt arr
  x → Left $ JavascriptDecodeError_Named "Expected NonEmptyArray<Int>" (JavascriptDecodeError_UnexpectedValue x)

extractStringAllowEmpty :: Javascript -> Either JavascriptDecodeError String
extractStringAllowEmpty = case _ of
  Javascript_NonEmptyString s -> pure $ NonEmptyString.toString s
  Javascript_EmptyString -> pure ""
  v -> Left $ JavascriptDecodeError_Named "Expected NonEmptyString or EmptyString" (JavascriptDecodeError_UnexpectedValue v)

-- | Common error type for unexpected extra keys in a map
newtype ExtraKeysError = ExtraKeysError (Array String)

derive instance Eq ExtraKeysError
derive instance Ord ExtraKeysError
derive instance Generic ExtraKeysError _
instance Show ExtraKeysError where
  show (ExtraKeysError keys) = "Unexpected keys in map: " <> show keys

-- | Helper for extracting records from Javascript values
class ExtractRecord (rl :: RL.RowList Type) (ri :: Row Type) (ro :: Row Type) | rl -> ri ro where
  extractRecordImpl :: Proxy rl -> Record ri -> Map String Javascript -> Either JavascriptDecodeError (Record ro)

-- | Base case for empty record
instance ExtractRecord RL.Nil () () where
  extractRecordImpl _ _ _ = pure {}

-- | Recursive case for fields
instance
  ( ExtractRecord tail ri' ro'
  , Row.Cons sym (Javascript -> Either JavascriptDecodeError a) ri' ri
  , Row.Cons sym a ro' ro
  , Row.Lacks sym ro'
  , IsSymbol sym
  ) =>
  ExtractRecord (RL.Cons sym (Javascript -> Either JavascriptDecodeError a) tail) ri ro where
  extractRecordImpl _ decoders jsMap = do
    let
      fieldName = Symbol.reflectSymbol (Proxy :: Proxy sym)
      decoder = Record.get (Proxy :: Proxy sym) decoders

    value <- getField decoder fieldName jsMap
    rest <- extractRecordImpl (Proxy :: Proxy tail)
      ((unsafeCoerce :: Record ri -> Record ri') decoders)
      jsMap

    pure $ Record.insert (Proxy :: Proxy sym) value rest

-- | Extract a record from a Javascript value using the provided decoders
extractRecord
  :: forall ri ro rl
   . RL.RowToList ri rl
  => ExtractRecord rl ri ro
  => Record ri
  -> Javascript
  -> Either JavascriptDecodeError (Record ro)
extractRecord decoders = case _ of
  Javascript_Map jsMap -> extractRecordImpl (Proxy :: Proxy rl) decoders jsMap
  x -> Left $ JavascriptDecodeError_Named "Expected Map" (JavascriptDecodeError_UnexpectedValue x)

-- | Extract a record strictly (no extra keys allowed)
extractRecordStrict
  :: forall ri ro rl
   . RL.RowToList ri rl
  => ExtractRecord rl ri ro
  => Record ri
  -> Javascript
  -> Either JavascriptDecodeError (Record ro)
extractRecordStrict decoders = case _ of
  Javascript_Map jsMap -> do
    -- First extract the record normally
    result <- extractRecordImpl (Proxy :: Proxy rl) decoders jsMap

    -- Then check if there are any unused keys
    let
      decoderKeys = Set.fromFoldable (Object.keys (unsafeCoerce decoders))
      mapKeys = Set.fromFoldable (Map.keys jsMap)
      extraKeys = Set.difference mapKeys decoderKeys

    if Set.isEmpty extraKeys then
      pure result
    else
      Left $ JavascriptDecodeError_Named "Map" $ JavascriptDecodeError_ExtraKeys (Array.fromFoldable extraKeys)
  x -> Left $ JavascriptDecodeError_Named "Map" (JavascriptDecodeError_UnexpectedValue x)

extractNameCodeSymbolNumericCode :: Javascript → Either JavascriptDecodeError NameCodeSymbolNumericCode
extractNameCodeSymbolNumericCode = extractRecordStrict
  { name: extractNES
  , code: extractNES
  , symbol: extractStringAllowEmpty
  , numericCode: extractNES
  }

decodeBetter :: Javascript -> Either JavascriptDecodeError JavascriptBetter
decodeBetter = case _ of
  Javascript_Null -> Right JavascriptBetter_Null
  Javascript_EmptyString -> Left $ JavascriptDecodeError_TypeMismatch "EmptyString"
  Javascript_Int i -> Left $ JavascriptDecodeError_UnexpectedValue (Javascript_Int i)
  Javascript_NonEmptyString s -> Left $ JavascriptDecodeError_UnexpectedValue (Javascript_NonEmptyString s)
  Javascript_NonEmptyArray arr ->
    (JavascriptBetter_NonEmptyArray_NameCodeSymbolNumericCode <$> traverse extractNameCodeSymbolNumericCode arr)
      <|> (JavascriptBetter_NonEmptyArray_NonEmptyString <$> traverse extractNES arr)
      <|> (JavascriptBetter_NonEmptyArray_Int <$> traverse extractInt arr)
      <|> (JavascriptBetter_NonEmptyArray_Weighted_NonEmptyString <$> traverse (extractWeightedOf extractNES) arr)
      <|> (JavascriptBetter_NonEmptyArray_Map_NonEmptyString <$> traverse (extractMapOf extractNES) arr)
      <|> (JavascriptBetter_NonEmptyArray_Map_JavascriptBetterMapValue <$> traverse extractMapOfBetterMapValue arr)
      <|> (JavascriptBetter_NonEmptyArray_String <$> traverse extractString arr)
  Javascript_Map m ->
    (JavascriptBetter_Map_Extensions <$> traverse extractExtensions m)
      <|> (JavascriptBetter_Map_NonEmptyArray_Int <$> traverse (extractArrayOf extractInt) m)
      <|> (JavascriptBetter_Map_NonEmptyString <$> traverse extractNES m)
      <|> (JavascriptBetter_Map_NonEmptyArray_Weighted <$> traverse (extractArrayOf (extractWeightedOf extractNES)) m)
      <|> (JavascriptBetter_Map_Map_NonEmptyString <$> traverse (extractMapOf extractNES) m)
      <|> (JavascriptBetter_Map_NonEmptyArray_NonEmptyString <$> traverse (extractArrayOf extractNES) m)
      <|> (JavascriptBetter_Map_JavascriptBetterMapValue <$> traverse extractBetterMapValue m)

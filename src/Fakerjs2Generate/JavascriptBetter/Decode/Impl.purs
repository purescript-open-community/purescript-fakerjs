module Fakerjs2Generate.JavascriptBetter.Decode.Impl where

import Fakerjs2Generate.JavascriptBetter.JavascriptError (JavascriptDecodeError(..))
import Prelude

import Data.Array as Array
import Data.Array.NonEmpty (NonEmptyArray)
import Data.Bifunctor (lmap)
import Data.Either (Either(..))
import Data.Map (Map)
import Data.Map as Map
import Data.Maybe (Maybe(..))
import Data.Set as Set
import Data.String.NonEmpty (NonEmptyString)
import Data.String.NonEmpty as NonEmptyString
import Data.Symbol (class IsSymbol)
import Data.Traversable (traverse)
import Fakerjs2Generate.Javascript (Javascript(..))
import Foreign.Object as Object
import Prim.Row as Row
import Prim.RowList as RL
import Record as Record
import Type.Prelude as Symbol
import Type.Proxy (Proxy(..))
import Unsafe.Coerce (unsafeCoerce)

type Decoder a = Javascript → Either JavascriptDecodeError a

decodeNES :: Decoder NonEmptyString
decodeNES = case _ of
  Javascript_NonEmptyString s -> pure s
  x -> Left $ JavascriptDecodeError_Named "NonEmptyString" (JavascriptDecodeError_UnexpectedValue x)

decodeInt :: Decoder Int
decodeInt = case _ of
  Javascript_Int i -> pure i
  x -> Left $ JavascriptDecodeError_Named "Int" (JavascriptDecodeError_UnexpectedValue x)

decodeArrayOf ∷ forall a. Decoder a -> Decoder (NonEmptyArray a)
decodeArrayOf f = case _ of
  Javascript_NonEmptyArray arr → traverse f arr
  x → Left $ JavascriptDecodeError_Named "NonEmptyArray" (JavascriptDecodeError_UnexpectedValue x)

decodeMapOf ∷ forall a. Decoder a → Decoder (Map String a)
decodeMapOf f = case _ of
  Javascript_Map m → traverse f m
  x → Left $ JavascriptDecodeError_Named "Map<String, _>" (JavascriptDecodeError_UnexpectedValue x)

-- | Required field decoder
getField
  :: forall a
   . Decoder a
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
   . Decoder a
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
   . Decoder a
  -> String
  -> Map String Javascript
  -> Either JavascriptDecodeError (Maybe a)
getFieldOptional' decoder key m =
  case Map.lookup key m of
    Nothing -> pure Nothing
    Just Javascript_Null -> pure Nothing
    Just v -> Just <$> lmap (JavascriptDecodeError_AtKey key) (decoder v)

decodeString :: Decoder String
decodeString = case _ of
  Javascript_NonEmptyString s -> pure (NonEmptyString.toString s)
  Javascript_EmptyString -> pure ""
  v -> Left $ JavascriptDecodeError_Named "Expected NonEmptyString or EmptyString" (JavascriptDecodeError_UnexpectedValue v)

-- | Helper for decodeing records from Javascript values
class DecodeRecord (rl :: RL.RowList Type) (ri :: Row Type) (ro :: Row Type) | rl -> ri ro where
  decodeRecordImpl :: Proxy rl -> Record ri -> Map String Javascript -> Either JavascriptDecodeError (Record ro)

-- | Base case for empty record
instance DecodeRecord RL.Nil () () where
  decodeRecordImpl _ _ _ = pure {}

-- | Recursive case for fields
instance
  ( DecodeRecord tail ri' ro'
  , Row.Cons sym (Javascript -> Either JavascriptDecodeError a) ri' ri
  , Row.Cons sym a ro' ro
  , Row.Lacks sym ro'
  , IsSymbol sym
  ) =>
  DecodeRecord (RL.Cons sym (Javascript -> Either JavascriptDecodeError a) tail) ri ro where
  decodeRecordImpl _ decoders jsMap = do
    let
      fieldName = Symbol.reflectSymbol (Proxy :: Proxy sym)
      decoder = Record.get (Proxy :: Proxy sym) decoders

    value <- getField decoder fieldName jsMap
    rest <- decodeRecordImpl (Proxy :: Proxy tail)
      ((unsafeCoerce :: Record ri -> Record ri') decoders)
      jsMap

    pure $ Record.insert (Proxy :: Proxy sym) value rest

-- | decode a record from a Javascript value using the provided decoders
decodeRecord
  :: forall ri ro rl
   . RL.RowToList ri rl
  => DecodeRecord rl ri ro
  => Record ri
  -> Decoder (Record ro)
decodeRecord decoders = case _ of
  Javascript_Map jsMap -> decodeRecordImpl (Proxy :: Proxy rl) decoders jsMap
  x -> Left $ JavascriptDecodeError_Named "Expected Map" (JavascriptDecodeError_UnexpectedValue x)

-- | decode a record strictly (no extra keys allowed)
decodeRecordStrict
  :: forall ri ro rl
   . RL.RowToList ri rl
  => DecodeRecord rl ri ro
  => Record ri
  -> Decoder (Record ro)
decodeRecordStrict decoders = case _ of
  Javascript_Map jsMap -> do
    -- First decode the record normally
    result <- decodeRecordImpl (Proxy :: Proxy rl) decoders jsMap

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

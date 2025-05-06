module Fakerjs2Generate.JavascriptBetter.Decode.Impl where

import Prelude

import Control.Alt ((<|>))
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
import Fakerjs2Generate.JavascriptBetter.JavascriptError (JavascriptDecodeError(..))
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

decodeNEAOf ∷ forall a. Decoder a -> Decoder (NonEmptyArray a)
decodeNEAOf f = case _ of
  Javascript_NonEmptyArray arr → traverse f arr
  x → Left $ JavascriptDecodeError_Named "NonEmptyArray" (JavascriptDecodeError_UnexpectedValue x)

-- decodeNEAOf_ignoreNull ∷ forall a. Decoder a -> Decoder (NonEmptyArray a)
-- decodeNEAOf_ignoreNull f = case _ of

decodeMapOf' ∷ forall a. Decoder a → Decoder (Map String a)
decodeMapOf' f = case _ of
  Javascript_Map m → traverse f m
  x → Left $ JavascriptDecodeError_Named "Map<String, _>" (JavascriptDecodeError_UnexpectedValue x)

decodeMapOf ∷ forall a. Decoder a → Decoder (Map NonEmptyString a)
decodeMapOf f = case _ of
  Javascript_Map m → traverse f ((unsafeCoerce :: Map String _ -> Map NonEmptyString _) m)
  x → Left $ JavascriptDecodeError_Named "Map<NonEmptyString, _>" (JavascriptDecodeError_UnexpectedValue x)

decodeMaybe :: forall a. Decoder a -> Decoder (Maybe a)
decodeMaybe decoder = case _ of
  Javascript_Null -> pure Nothing
  value -> Just <$> decoder value

decodeEither :: forall a b. Decoder a -> Decoder b -> Decoder (Either a b)
decodeEither decodeA decodeB js =
  -- Attempt to decode as the Left case. If it fails, attempt the Right case.
  -- The error message will indicate which branch failed last.
  let
    tryLeft = lmap (JavascriptDecodeError_Named "Either (Left branch)") (Left <$> decodeA js)
    tryRight = lmap (JavascriptDecodeError_Named "Either (Right branch)") (Right <$> decodeB js)
  in
    tryLeft <|> tryRight

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
  v -> Left $ JavascriptDecodeError_Named "String" (JavascriptDecodeError_UnexpectedValue v)

newtype Optional a = Optional (Decoder a)

-- | Helper for decodeing records from Javascript values
class DecodeRecord (rl :: RL.RowList Type) (ri :: Row Type) (ro :: Row Type) | rl -> ri ro where
  decodeRecordImpl :: Record ri -> Map String Javascript -> Either JavascriptDecodeError (Record ro)

-- | Base case for empty record
instance DecodeRecord RL.Nil () () where
  decodeRecordImpl _ _ = pure {}

instance
  ( DecodeRecord tail ri' ro'
  , Row.Cons sym (Optional a) ri' ri
  , Row.Cons sym (Maybe a) ro' ro
  , Row.Lacks sym ro'
  , IsSymbol sym
  ) =>
  DecodeRecord (RL.Cons sym (Optional a) tail) ri ro where
  decodeRecordImpl decoders jsMap = do
    let
      fieldName = Symbol.reflectSymbol (Proxy :: Proxy sym)
      Optional decoder = Record.get (Proxy :: Proxy sym) decoders

      mValue = Map.lookup fieldName jsMap

    value <- case mValue of
      Just v -> map Just (decoder v)
      Nothing -> pure Nothing

    rest <- decodeRecordImpl @tail
      ((unsafeCoerce :: Record ri -> Record ri') decoders)
      jsMap

    pure $ Record.insert (Proxy :: Proxy sym) value rest
else instance
  ( DecodeRecord tail ri' ro'
  , Row.Cons sym (Decoder a) ri' ri
  , Row.Cons sym a ro' ro
  , Row.Lacks sym ro'
  , IsSymbol sym
  ) =>
  DecodeRecord (RL.Cons sym (Decoder a) tail) ri ro where
  decodeRecordImpl decoders jsMap = do
    let
      fieldName = Symbol.reflectSymbol (Proxy :: Proxy sym)
      decoder = Record.get (Proxy :: Proxy sym) decoders

    value <- getField decoder fieldName jsMap
    rest <- decodeRecordImpl @tail
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
  Javascript_Map jsMap -> decodeRecordImpl @rl decoders jsMap
  x -> Left $ JavascriptDecodeError_Named "Map" (JavascriptDecodeError_UnexpectedValue x)

-- | decode a record strictly (no extra keys allowed)
decodeRecordStrict
  :: forall ri ro rl
   . RL.RowToList ri rl
  => DecodeRecord rl ri ro
  => Record ri
  -> Decoder (Record ro)
decodeRecordStrict decoders = case _ of
  Javascript_Map jsMap -> do
    -- traceM jsMap
    -- First decode the record normally
    result <- decodeRecordImpl @rl decoders jsMap
    -- traceM result

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

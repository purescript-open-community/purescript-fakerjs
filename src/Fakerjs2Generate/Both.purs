module Fakerjs2Generate.Both where

import Prelude

import Data.Tuple (Tuple(..))
import Fakerjs2Generate.JavascriptBetter.Decode.Impl (Decoder)
import Fakerjs2Generate.JavascriptBetter.Encode.CodeGenOutput (EncoderToExport)
import Prim.Row as Row
import Prim.RowList as RL
import Record as Record
import Record.Builder (Builder)
import Record.Builder as Builder
import Type.Prelude (class IsSymbol, Proxy(..))

newtype Both decoderOutputEncoderInput = Both (Tuple (Decoder decoderOutputEncoderInput) (EncoderToExport decoderOutputEncoderInput))

-- | Type-specific version of zipRecord and mapRecord that uses the Both newtype
zipRecordToBoth
  :: forall row rowA rowB ta tb
   . RL.RowToList rowA ta
  => RL.RowToList rowB tb
  => ZipRecordToBoth ta tb rowA rowB row
  => Record rowA -- ^ Decoders
  -> Record rowB -- ^ Encoders
  -> Record row -- ^ Record of Both wrappers
zipRecordToBoth decoders encoders = Builder.build builder {}
  where
  builder = zipRecordToBothImpl @ta @tb decoders encoders

class
  ZipRecordToBoth
    (rla :: RL.RowList Type)
    (rlb :: RL.RowList Type)
    (ra :: Row Type)
    (rb :: Row Type)
    (rc :: Row Type)
  | rla -> ra
  , rlb -> rb
  , rla rlb -> rc
  where
  zipRecordToBothImpl
    :: Record ra
    -> Record rb
    -> Builder {} (Record rc)

instance zipRecordToBothNil :: ZipRecordToBoth RL.Nil RL.Nil ra rb ()
  where
  zipRecordToBothImpl _ _ = identity

instance zipRecordToBothCons ::
  ( IsSymbol key
  , Row.Cons key (Decoder a) restDec ra
  , Row.Cons key (EncoderToExport a) restEnc rb
  , Row.Cons key (Both a) restOut rc
  , Row.Lacks key restOut
  , ZipRecordToBoth restLA restLB ra rb restOut
  ) =>
  ZipRecordToBoth
    (RL.Cons key (Decoder a) restLA)
    (RL.Cons key (EncoderToExport a) restLB)
    ra
    rb
    rc
  where
  zipRecordToBothImpl decoders encoders = Builder.insert key combined <<< rest
    where
    key = Proxy :: Proxy key
    decoder = Record.get key decoders
    encoder = Record.get key encoders

    -- Combine decoder and encoder into a Both wrapper
    combined = Both (Tuple decoder encoder)

    rest = zipRecordToBothImpl @restLA @restLB decoders encoders

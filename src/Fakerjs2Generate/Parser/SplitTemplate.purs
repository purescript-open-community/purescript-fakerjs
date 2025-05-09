module Fakerjs2Generate.Parser.SplitTemplate where

import Prelude

import Data.Array.NonEmpty (NonEmptyArray, fromArray, singleton)
-- import Control.Monad.ST (ST, run)
-- import Data.Array (length)
-- import Data.Array (snoc)
-- import Data.Array.ST as STA
import Data.Either (Either(..))
import Data.Function.Uncurried (Fn3, runFn3)
-- import Data.Maybe (Maybe(..), fromMaybe)
-- import Data.String (Pattern(..))
-- import Data.String.CodeUnits as String
import Data.String.NonEmpty (NonEmptyString, toString, fromString)

-- splitTemplateCalls :: NonEmptyString -> NonEmptyArray (Either NonEmptyString NonEmptyString)
-- splitTemplateCalls input =
--   fromMaybe (singleton (Left input)) $ fromArray $ run go
--   where
--   str = toString input
--   totalLen = String.length str
--
--   go :: forall h. ST h (Array (Either NonEmptyString NonEmptyString))
--   go = do
--     arr <- STA.new
--     let
--       loop startIndex =
--         if startIndex >= totalLen then
--           pure unit
--         else
--           case String.indexOf' (Pattern "{{") startIndex str of
--             Just openIndex ->
--               case String.indexOf' (Pattern "}}") (openIndex + 2) str of
--                 Just closeIndex -> do
--                   when (openIndex > startIndex) do
--                     let before = String.slice startIndex openIndex str
--                     case fromString before of
--                       Just ne -> void $ STA.push (Left ne) arr
--                       Nothing -> pure unit
--                   let inner = String.slice (openIndex + 2) closeIndex str
--                   case fromString inner of
--                     Just ne -> void $ STA.push (Right ne) arr
--                     Nothing -> pure unit
--                   loop (closeIndex + 2)
--                 Nothing -> do
--                   let rest = String.slice startIndex totalLen str
--                   case fromString rest of
--                     Just ne -> void $ STA.push (Left ne) arr
--                     Nothing -> pure unit
--             Nothing -> do
--               let rest = String.slice startIndex totalLen str
--               case fromString rest of
--                 Just ne -> void $ STA.push (Left ne) arr
--                 Nothing -> pure unit
--     loop 0 *> STA.freeze arr

foreign import splitTemplateCallsImpl
  :: Fn3
       (NonEmptyString -> Either NonEmptyString NonEmptyString) -- Left constructor
       (NonEmptyString -> Either NonEmptyString NonEmptyString) -- Right constructor
       NonEmptyString -- Input
       (NonEmptyArray (Either NonEmptyString NonEmptyString)) -- Result

splitTemplateCalls :: NonEmptyString -> NonEmptyArray (Either NonEmptyString NonEmptyString)
splitTemplateCalls = runFn3 splitTemplateCallsImpl Left Right

module Fakerjs2Generate.Parser.StringWithCalls where

import Prelude

import Data.Array.Extra (partitionEithers)
import Data.Array.NonEmpty (NonEmptyArray)
import Data.Array.NonEmpty as NonEmptyArray
import Data.Either (Either(..))
import Data.Maybe (fromJust)
import Data.String.NonEmpty (NonEmptyString)
import Data.String.NonEmpty as NonEmptyString
import Debug (spy)
import Fakerjs2Generate.Parser.FunctionCall (FunctionCall, parseFunctionCall)
import Fakerjs2Generate.Parser.SplitTemplate (splitTemplateCalls)
import Parsing (ParseError, runParser)
import Partial.Unsafe (unsafeCrashWith, unsafePartial)

-- suppose:
-- input type:  Array (Either String (Either Error Int))
-- output type: Array (Either (Either Error Int) (Either Error Int))
-- input:  [Left "a", Right (Right 1), Left "b", Right (Left error1)]
-- output: Left [error1]

collectErrors
  :: forall a b error
   . NonEmptyArray (Either a (Either error b))
  -> Either (NonEmptyArray error) (NonEmptyArray (Either a b))
collectErrors xs =
  case (partitionEithers handle (NonEmptyArray.toArray xs)) of
    { left: [], right } -> Right $ unsafePartial $ fromJust $ NonEmptyArray.fromArray right
    { left: [], right: [] } -> unsafeCrashWith "IMPOSSIBLE"
    { left } -> Left $ unsafePartial $ fromJust $ NonEmptyArray.fromArray left
  where
  handle :: Either a (Either error b) -> Either error (Either a b)
  handle = case _ of
    Left a -> Right (Left a)
    Right (Left err) -> Left err
    Right (Right b) -> Right (Right b)

parseStringWithCalls'
  :: NonEmptyString
  -> NonEmptyArray (Either NonEmptyString (Either ParseError FunctionCall))
parseStringWithCalls' input =
  map handleChunk (splitTemplateCalls input)
  where
  handleChunk :: Either NonEmptyString NonEmptyString -> Either NonEmptyString (Either ParseError FunctionCall)
  handleChunk = case _ of
    Left literal -> Left literal
    Right codeStr -> Right (runParser (NonEmptyString.toString codeStr) parseFunctionCall)

parseStringWithCalls
  :: NonEmptyString
  -> Either (NonEmptyArray ParseError) (NonEmptyArray (Either NonEmptyString FunctionCall))
parseStringWithCalls input = collectErrors (parseStringWithCalls' input)

-- case map handleChunk (splitTemplateCalls input) of
--   Left errs -> Left errs
--   Right parsed -> Right parsed
-- where
-- handleChunk :: Either NonEmptyString NonEmptyString -> Either NonEmptyString (Either ParseError FunctionCall)
-- handleChunk (Left literal) = Left literal
-- handleChunk (Right codeStr) =
--   Right (runParser (fromString codeStr) parseFunctionCall)

-- -- Top-level parser that splits a string into calls and literals
-- templateParser :: String -> NonEmptyArray StringWithCalls
-- templateParser input =
--   toUnfoldable $ map toSWC (splitCap input parseCallBracketed)
--   -- map (map toSWC <<< NonEmptyArray.fromArray)
--   where
--   toSWC :: Either String FunctionCall -> StringWithCalls
--   toSWC (Left lit) = SWC_Literal lit
--   toSWC (Right fn) = SWC_Call fn

-- Utility to convert a parsed template to string representation (for debugging)
-- renderTemplateString :: Array StringWithCalls -> String
-- renderTemplateString = Array.foldMap renderStringWithCalls
--
-- -- Render a single StringWithCalls component
-- renderStringWithCalls :: StringWithCalls -> String
-- renderStringWithCalls (SWC_Literal str) = str
-- renderStringWithCalls (SWC_Call call) = "{{" <> renderFunctionCall call <> "}}"

-- -- Type definitions
-- data StringWithCalls
--   = SWC_Literal NonEmptyString
--   | SWC_Call FunctionCall
--
-- derive instance Eq StringWithCalls
-- derive instance Ord StringWithCalls
-- derive instance Generic StringWithCalls _
-- instance Show StringWithCalls where
--   show = genericShow

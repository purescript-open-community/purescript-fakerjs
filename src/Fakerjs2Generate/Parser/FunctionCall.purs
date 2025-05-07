module Fakerjs2Generate.Parser.FunctionCall (parseFunctionCall, FunctionCall(..), IntArgs) where

import Prelude

import Control.Alt ((<|>))
import Control.Lazy (defer)
import Data.Argonaut.Parser (jsonParser)
import Data.Array (fromFoldable) as Array
import Data.CodePoint.Unicode (isLetter, isUpper)
import Data.Codec.Argonaut (printJsonDecodeError)
import Data.Codec.Argonaut as CA
import Data.Codec.Argonaut.Record as CAR
import Data.Either (Either(..))
import Data.Generic.Rep (class Generic)
import Data.List (List)
import Data.Show.Generic (genericShow)
import Data.String.CodePoints (CodePoint, codePointFromChar)
import Data.String.CodePoints as String
import Data.String.Regex.Flags (noFlags)
import Parsing (Parser, fail)
import Parsing.Combinators (between, choice, sepBy, try)
import Parsing.String (char, eof, regex, satisfyCodePoint, string)
import Parsing.String.Basic (intDecimal, skipSpaces, takeWhile1)
import Partial.Unsafe (unsafeCrashWith)

type IntArgs = { min :: Int, max :: Int }

data FunctionCall
  = FC_Number_Int IntArgs
  | FC_Helpers_ArrayElement (Array String)
  | FC_String_Numeric Int
  | FC_SimpleIdentifier String
  | FC_SimpleIdentifier2 String String
  | FC_SimpleIdentifier3 String String String
  | FC_Helpers_FromRegExp String

derive instance Eq FunctionCall
derive instance Ord FunctionCall
derive instance Generic FunctionCall _
instance Show FunctionCall where
  show = genericShow

-- Main function call parser that dispatches to specific function parsers
parseFunctionCall :: Parser String FunctionCall
parseFunctionCall = defer \_ ->
  choice
    [ try $ parseFC_Helpers_FromRegExp
    , try $ parseStringNumeric
    , try $ parseArrayElement
    , try $ parseNumberInt
    , try $ parseSimpleIdentifier3
    , try $ parseSimpleIdentifier2
    , try $ parseSimpleIdentifier
    ] <* eof

isFunctionIdentifier :: CodePoint -> Boolean
isFunctionIdentifier = isLetter || (_ == codePointFromChar '_')

parseSimpleIdentifier :: Parser String FunctionCall
parseSimpleIdentifier = FC_SimpleIdentifier <$> takeWhile1 isFunctionIdentifier

parseSimpleIdentifier2 :: Parser String FunctionCall
parseSimpleIdentifier2 = do
  fst <- takeWhile1 isFunctionIdentifier
  _ <- char '.'
  snd <- takeWhile1 isFunctionIdentifier
  pure $ FC_SimpleIdentifier2 fst snd

parseSimpleIdentifier3 :: Parser String FunctionCall
parseSimpleIdentifier3 = do
  fst <- takeWhile1 isFunctionIdentifier
  _ <- char '.'
  snd <- takeWhile1 isFunctionIdentifier
  _ <- char '.'
  trd <- takeWhile1 isFunctionIdentifier
  pure $ FC_SimpleIdentifier3 fst snd trd

-- Parser for number.int function call: number.int({ min: X, max: Y })
parseStringNumeric :: Parser String FunctionCall
parseStringNumeric = do
  _ <- string """string.numeric("""
  num <- intDecimal
  _ <- string """)"""
  pure $ FC_String_Numeric num

intArgsCodec :: CA.JsonCodec IntArgs
intArgsCodec = CA.object "IntArgs" $ CAR.record
  { min: CA.int
  , max: CA.int
  }

parseNumberInt :: Parser String FunctionCall
parseNumberInt = do
  _ <- string "number.int("
  jsonStr <- takeWhile1 (_ /= codePointFromChar ')')
  _ <- char ')'
  case jsonParser jsonStr of
    Left err -> fail $ "Failed to parse JSON: " <> err
    Right jsonVal ->
      case CA.decode intArgsCodec jsonVal of
        Left err -> fail $ "Failed to decode intArgs: " <> printJsonDecodeError err
        Right args -> pure $ FC_Number_Int args

parseArrayElement :: Parser String FunctionCall
parseArrayElement = do
  _ <- string "helpers.arrayElement"
  arr <- between (string "(" *> skipSpaces) (skipSpaces *> string ")")
    $ between (string "[" *> skipSpaces) (skipSpaces *> string "]")
    $ map Array.fromFoldable
    $ parseStringArray
  pure $ FC_Helpers_ArrayElement arr

commonRegex :: String
commonRegex = """[0-9][ABCEGHJ-NPRSTVW-Z] [0-9][ABCEGHJ-NPRSTVW-Z][0-9]"""

parseFC_Helpers_FromRegExp :: Parser String FunctionCall
parseFC_Helpers_FromRegExp = do
  _ <- string """helpers.fromRegExp(""""
  prefix <- parseCharOrCharClass
  _ <- string commonRegex
  _ <- string """")"""
  pure $ FC_Helpers_FromRegExp prefix

-- Parses either a single uppercase letter or a class like [KLMNP]
parseCharOrCharClass :: Parser String String
parseCharOrCharClass =
  parseBracketed <|> parseSingle
  where
  parseSingle = do
    c <- satisfyCodePoint (\ch -> isLetter ch && isUpper ch)
    pure (String.fromCodePointArray [ c ])

  parseBracketed = do
    _ <- char '['
    cs <- takeWhile1 (isLetter && isUpper)
    _ <- char ']'
    pure cs

-- Parser for string arrays like ["a","b","c"]
parseStringArray :: Parser String (List String)
parseStringArray = parseJsonString `sepBy` (try (skipSpaces *> string "," *> skipSpaces))

-- Parser for JSON string literals with double quotes
parseJsonString :: Parser String String
parseJsonString = case regex """\\"|[^"]*""" noFlags of
  Left err -> unsafeCrashWith err
  Right p -> between (string "\"") (string "\"") p

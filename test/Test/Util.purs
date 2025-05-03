module Test.Util where

import Prelude

import Data.Either (Either(..))
import Data.String as String
import Parsing (ParseError, Parser, runParser)
import Parsing.String (parseErrorHuman)
import Test.Spec (Spec, it)
import Test.Spec.Assertions (shouldEqual)
import Test.Spec.Assertions as Spec

mkParseTest
  :: forall a
   . Show a
  => Eq a
  => Parser String a
  -> String
  -> a
  -> Spec Unit
mkParseTest parser input expected =
  it ("parses input correctly: " <> show input) do
    let (x :: Either ParseError a) = runParser input parser
    case x of
      Right actual -> actual `shouldEqual` expected
      Left err -> Spec.fail $ String.joinWith "\n" $
        [ "Parse failed on input: " <> show input
        , "Expected: " <> show expected
        , "Error: " <> show err
        ] <> parseErrorHuman input 60 err

mkParseTestShouldFail
  :: forall a
   . Show a
  => Eq a
  => Parser String a
  -> String -- ^ Input to parse
  -> String -- ^ Expected full error message
  -> Spec Unit
mkParseTestShouldFail parser input expectedError =
  it ("fails to parse input with expected error: " <> show input) do
    case runParser input parser of
      Left err ->
        let
          actualError = String.joinWith "\n" (parseErrorHuman input 60 err)
        in
          actualError `shouldEqual` expectedError
      Right result ->
        Spec.fail $ "Expected parser to fail, but it succeeded with: " <> show result

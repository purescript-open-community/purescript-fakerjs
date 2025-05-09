module Test.Fakerjs2Generate.StringWithCallsSpec where

import Prelude

import Data.Array as Array
import Data.Array.NonEmpty as NonEmptyArray
import Data.Bifunctor (lmap)
import Data.Either (Either(..))
import Data.Maybe (fromJust)
import Data.String as String
import Data.String.NonEmpty (class MakeNonEmpty, nes)
import Data.String.NonEmpty as NonEmptyString
import Data.Symbol (class IsSymbol)
import Fakerjs2Generate.Parser.FunctionCall (FunctionCall(..))
import Fakerjs2Generate.Parser.StringWithCalls (parseStringWithCalls)
import Parsing.String (parseErrorHuman)
import Partial.Unsafe (unsafePartial)
import Test.Spec (Spec, it)
import Test.Spec.Assertions (shouldEqual)
import Test.Spec.Assertions as Spec
import Type.Prelude (reflectSymbol)
import Type.Proxy (Proxy(..))

mkTest :: forall @input. IsSymbol input => MakeNonEmpty input => Array (Either String FunctionCall) -> Spec Unit
mkTest expected =
  let
    input = reflectSymbol (Proxy :: Proxy input)
    input' = nes (Proxy :: Proxy input)
  in
    it (show (reflectSymbol (Proxy :: Proxy input))) do
      let fs = unsafePartial $ NonEmptyString.unsafeFromString
      let expected' = unsafePartial $ fromJust $ NonEmptyArray.fromArray $ map (lmap fs) $ expected
      case parseStringWithCalls input' of
        Left errors -> Spec.fail $ String.joinWith "\n" $ Array.concat $
          [ [ "Parse failed on input: " <> show input
            , "Expected: " <> show expected
            , "Error: " <> show (NonEmptyArray.toArray errors)
            ]
          ] <> map (parseErrorHuman input 60) (NonEmptyArray.toArray errors)
        Right x -> x `shouldEqual` expected'

mkTestShouldFail
  :: forall @input
   . IsSymbol input
  => MakeNonEmpty input
  => Array String -- expected error messages (e.g. parts of parseErrorHuman)
  -> Spec Unit
mkTestShouldFail expectedErrors =
  let
    input = reflectSymbol (Proxy :: Proxy input)
    input' = nes (Proxy :: Proxy input)
  in
    it ("fails to parse input: " <> show input) do
      case parseStringWithCalls input' of
        Right result ->
          Spec.fail $ "Expected failure, but got success with: " <> show result
        Left errors ->
          let
            actualMessages = map (parseErrorHuman input 60) (NonEmptyArray.toArray errors)
            flatMessages = Array.concat actualMessages
          in
            flatMessages `shouldEqual` expectedErrors

spec ∷ Spec Unit
spec = do
  mkTest @"""Test""" [ Left "Test" ]
  mkTest @"""{{number.int({"min":1,"max":9})}}""" [ Right (FC_Number_Int { max: 9, min: 1 }) ]
  mkTestShouldFail @"""{{number.int({"xxx":1,"max":9})}}"""
    [ "Expected EOF at position index:10 (line:1, column:11)", "          ▼", "{{number.int({\"xxx\":1,\"max\":9})}}" ]
  mkTest @"""Test{{number.int({"min":1,"max":9})}}""" [ Left "Test", Right (FC_Number_Int { max: 9, min: 1 }) ]
  mkTest @"""Test{{number.int({"min":1,"max":9})}}Test""" [ Left "Test", Right (FC_Number_Int { max: 9, min: 1 }), Left "Test" ]
  mkTest @"""Test{{number.int({"min":1,"max":9})}}Test{{other}}""" [ Left "Test", Right (FC_Number_Int { max: 9, min: 1 }), Left "Test", Right (FC_SimpleIdentifier "other") ]
  mkTest @"""Test{{number.int({"min":1,"max":9})}}Test{{other}}}""" [ Left "Test", Right (FC_Number_Int { max: 9, min: 1 }), Left "Test", Right (FC_SimpleIdentifier "other"), Left "}" ]
  mkTest @"""Test{{number.int({"min":1,"max":9})}}Test{Other}}""" [ Left "Test", Right (FC_Number_Int { max: 9, min: 1 }), Left "Test{Other}}" ]
  mkTest @"""Test{{number.int({"min":1,"max":9})}}Test{Other}""" [ Left "Test", Right (FC_Number_Int { max: 9, min: 1 }), Left "Test{Other}" ]
  mkTest @"""Test{{number.int({"min":1,"max":9})}}Test{{Other}""" [ Left "Test", Right (FC_Number_Int { max: 9, min: 1 }), Left "Test{{Other}" ]
  mkTest
    @"Mozilla/5.0 (Linux; Android {{number.int({\"min\":5,\"max\":13})}}; {{helpers.arrayElement([\"SM-G998U\",\"SM-G998B\",\"SM-G998N\",\"SM-G998P\",\"SM-T800\"])}}) AppleWebKit/{{number.int({\"min\":536,\"max\":605})}}.{{number.int({\"min\":0,\"max\":99})}} (KHTML, like Gecko) Chrome/{{number.int({\"min\":55,\"max\":131})}}.{{system.semver}} Mobile Safari/{{number.int({\"min\":536,\"max\":605})}}.{{number.int({\"min\":0,\"max\":99})}}"
    [ Left "Mozilla/5.0 (Linux; Android "
    , Right (FC_Number_Int { min: 5, max: 13 })
    , Left "; "
    , Right (FC_Helpers_ArrayElement [ "SM-G998U", "SM-G998B", "SM-G998N", "SM-G998P", "SM-T800" ])
    , Left ") AppleWebKit/"
    , Right (FC_Number_Int { min: 536, max: 605 })
    , Left "."
    , Right (FC_Number_Int { min: 0, max: 99 })
    , Left " (KHTML, like Gecko) Chrome/"
    , Right (FC_Number_Int { min: 55, max: 131 })
    , Left "."
    , Right (FC_SimpleIdentifier2 "system" "semver")
    , Left " Mobile Safari/"
    , Right (FC_Number_Int { min: 536, max: 605 })
    , Left "."
    , Right (FC_Number_Int { min: 0, max: 99 })
    ]

  mkTestShouldFail @"""Test{{{{number.int({"min":1,"max":9})}}}}Test{{Other}"""
    [ "Expected character satisfying predicate at position index:0 (line:1, column:1)", "▼", "Test{{{{number.int({\"min\":1,\"max\":9})}}}}Test{{Other}" ]

-- mkTest @"""Test""" [ (SWC_Literal "Test") ]
-- mkTest @"""{{number.int({"min":1,"max":9})}}""" [ (SWC_Call $ FC_Number_Int { min: 1, max: 9 }) ]
-- mkParseTest templateParser """Test {{number.int({"min":1,"max":9})}}""" [ (SWC_Call $ FC_Number_Int { min: 1, max: 9 }) ]
-- mkParseTest templateParser """Test {{number.int({"min":1,"max":9})}} and more text""" [ (SWC_Call $ FC_Number_Int { min: 1, max: 9 }) ]

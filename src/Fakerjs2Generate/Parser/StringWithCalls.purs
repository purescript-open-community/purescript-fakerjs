module Fakerjs2Generate.Parser.StringWithCalls where

import Prelude

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Bifunctor (rmap)
import Data.Either (either)
import Data.Either.Nested (type (\/))
import Data.Generic.Rep (class Generic)
import Data.Show.Generic (genericShow)
import Data.String.NonEmpty (NonEmptyString)
import Data.String.NonEmpty as NonEmptyString
import Fakerjs2Generate.Parser.FunctionCall (FunctionCall, parseFunctionCall)
import Fakerjs2Generate.Parser.FunctionCallKnown (FunctionCallKnown, FunctionCallKnownError, fromFunctionCallToKnown)
import Fakerjs2Generate.Parser.SplitTemplate (splitTemplateCalls)
import Fakerjs2Generate.Utils.CollectErrors (collectErrors)
import Parsing (ParseError, runParser)

parseStringWithCalls'
  :: NonEmptyString
  -> NonEmptyArray (NonEmptyString \/ ParseError \/ FunctionCallKnownError \/ FunctionCallKnown)
parseStringWithCalls' = \input ->
  map (handleChunk >>> handleChunk2) (splitTemplateCalls input)
  where
  handleChunk :: NonEmptyString \/ NonEmptyString -> NonEmptyString \/ ParseError \/ FunctionCall
  handleChunk = rmap \codeStr -> runParser (NonEmptyString.toString codeStr) parseFunctionCall

  handleChunk2 :: NonEmptyString \/ ParseError \/ FunctionCall -> NonEmptyString \/ ParseError \/ FunctionCallKnownError \/ FunctionCallKnown
  handleChunk2 = rmap $ rmap fromFunctionCallToKnown

-- Type definitions
data SWC_LiteralOrCall
  = SWC_Literal NonEmptyString
  | SWC_Call FunctionCallKnown

derive instance Generic SWC_LiteralOrCall _
derive instance Eq SWC_LiteralOrCall
derive instance Ord SWC_LiteralOrCall
instance Show SWC_LiteralOrCall where
  show = genericShow

newtype StringWithCalls = StringWithCalls (NonEmptyArray SWC_LiteralOrCall)

derive instance Generic StringWithCalls _
derive newtype instance Eq StringWithCalls
derive newtype instance Ord StringWithCalls
derive newtype instance Show StringWithCalls

parseStringWithCalls
  :: NonEmptyString
  -> NonEmptyArray ParseError \/ NonEmptyArray FunctionCallKnownError \/ StringWithCalls
parseStringWithCalls input =
  (map $ map (StringWithCalls <<< map (either SWC_Literal SWC_Call)))
    $ map collectErrors
    $ collectErrors
    $ parseStringWithCalls' input

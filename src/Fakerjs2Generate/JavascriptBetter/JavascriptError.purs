module Fakerjs2Generate.JavascriptBetter.JavascriptError where

import Prelude

import Data.Argonaut.Core as J
import Data.Codec.Argonaut (encode) as C
import Data.Generic.Rep (class Generic)
import Fakerjs2Generate.Javascript (Javascript, javascriptCodec)

---------------------------------------------------------------
-- | Error type for failures while decoding.
data JavascriptDecodeError
  = JavascriptDecodeError_TypeMismatch String
  | JavascriptDecodeError_UnexpectedValue Javascript
  | JavascriptDecodeError_AtIndex Int JavascriptDecodeError
  | JavascriptDecodeError_AtKey String JavascriptDecodeError
  | JavascriptDecodeError_Named String JavascriptDecodeError
  | JavascriptDecodeError_MissingValue
  | JavascriptDecodeError_ExtraKeys (Array String)

derive instance Eq JavascriptDecodeError
derive instance Ord JavascriptDecodeError
derive instance Generic JavascriptDecodeError _

-- | Prints a `JavascriptDecodeError` as a somewhat readable error message.
printJavascriptDecodeError ∷ JavascriptDecodeError → String
printJavascriptDecodeError err =
  "An error occurred while decoding a JSON value:\n" <> go err
  where
  go = case _ of
    JavascriptDecodeError_TypeMismatch ty → "  Expected value of type '" <> ty <> "'."
    JavascriptDecodeError_UnexpectedValue val → "  Unexpected value " <> J.stringify (C.encode javascriptCodec val) <> "."
    JavascriptDecodeError_AtIndex ix inner → "  At array index " <> show ix <> ":\n" <> go inner
    JavascriptDecodeError_AtKey key inner → "  At object key " <> key <> ":\n" <> go inner
    JavascriptDecodeError_Named name inner → "  Under '" <> name <> "':\n" <> go inner
    JavascriptDecodeError_MissingValue → "  No value was found."
    JavascriptDecodeError_ExtraKeys arr → "  extra" <> show arr

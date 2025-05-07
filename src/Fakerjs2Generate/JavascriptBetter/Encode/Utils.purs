module Fakerjs2Generate.JavascriptBetter.Encode.Utils where

import Prelude

import Data.Array as Array
import Dodo as Dodo
import PureScript.CST.Types (Ident, Proper, QualifiedName)
import PureScript.CST.Types as CST
import Tidy as Tidy
import Tidy.Codegen.Monad (CodegenT)
import Tidy.Codegen.Monad as Tidy.Codegen.Monad

formatTypeSignature :: forall t2167. Tidy.FormatError t2167 => CST.Type t2167 -> String
formatTypeSignature typeSignature = Dodo.print Dodo.plainText Dodo.twoSpaces (Tidy.toDoc $ Tidy.formatType Tidy.defaultFormatOptions typeSignature)

purescriptKeywords :: Array String
purescriptKeywords =
  [ "case"
  , "class"
  , "data"
  , "derive"
  , "do"
  , "else"
  , "false"
  , "forall"
  , "foreign"
  , "if"
  , "import"
  , "in"
  , "infix"
  , "infixl"
  , "infixr"
  , "instance"
  , "let"
  , "module"
  , "newtype"
  , "null"
  , "of"
  , "then"
  , "true"
  , "type"
  , "where"
  , "while"
  , "with"
  ]

add_ifPurescriptKeyword :: String -> String
add_ifPurescriptKeyword name = if Array.elem name purescriptKeywords then name <> "_" else name

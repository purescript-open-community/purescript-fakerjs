module Fakerjs2Generate.JavascriptBetter.Encode.Utils where

import Prelude

import Data.Array as Array
import Dodo as Dodo
import PureScript.CST.Types (Ident, Proper, QualifiedName)
import PureScript.CST.Types as CST
import Tidy as Tidy
import Tidy.Codegen.Monad (CodegenT)
import Tidy.Codegen.Monad as Tidy.Codegen.Monad

importNonEmptyStringType :: forall e1328 m1329. Monad m1329 => Partial => CodegenT e1328 m1329 (QualifiedName Proper)
importNonEmptyStringType = Tidy.Codegen.Monad.importFrom "Data.String.NonEmpty" (Tidy.Codegen.Monad.importType "NonEmptyString")

importNonEmptyArrayType :: forall e1335 m1336. Monad m1336 => Partial => CodegenT e1335 m1336 (QualifiedName Proper)
importNonEmptyArrayType = Tidy.Codegen.Monad.importFrom "Data.Array.NonEmpty" (Tidy.Codegen.Monad.importType "NonEmptyArray")

importUnsafeCoerceInd :: forall e1321 m1322. Monad m1322 => Partial => CodegenT e1321 m1322 (QualifiedName Ident)
importUnsafeCoerceInd = Tidy.Codegen.Monad.importFrom "Unsafe.Coerce" (Tidy.Codegen.Monad.importValue "unsafeCoerce")

importUnsafeFromString :: forall e1321 m1322. Monad m1322 => Partial => CodegenT e1321 m1322 (QualifiedName Ident)
importUnsafeFromString = Tidy.Codegen.Monad.importFrom "Data.String.NonEmpty" (Tidy.Codegen.Monad.importValue "unsafeFromString")

importGenType :: forall e1321 m1322. Monad m1322 => Partial => CodegenT e1321 m1322 (QualifiedName Proper)
importGenType = Tidy.Codegen.Monad.importFrom "Test.QuickCheck.Gen" (Tidy.Codegen.Monad.importType "Gen")

importOneOfFunction :: forall e1321 m1322. Monad m1322 => Partial => CodegenT e1321 m1322 (QualifiedName Ident)
importOneOfFunction = Tidy.Codegen.Monad.importFrom "Test.QuickCheck.Gen" (Tidy.Codegen.Monad.importValue "oneOf")

importFakerjs2Type :: forall e1321 m1322. Monad m1322 => Partial => String -> CodegenT e1321 m1322 (QualifiedName Proper)
importFakerjs2Type typeName = Tidy.Codegen.Monad.importFrom "Fakerjs2.Types" (Tidy.Codegen.Monad.importType typeName)

importFakerjs2Weighted :: forall e1321 m1322. Monad m1322 => Partial => CodegenT e1321 m1322 (QualifiedName Proper)
importFakerjs2Weighted = importFakerjs2Type "Weighted"

importJustCtor :: forall e m. Monad m => Partial => CodegenT e m (QualifiedName Proper)
importJustCtor = Tidy.Codegen.Monad.importFrom "Data.Maybe" (Tidy.Codegen.Monad.importCtor "Maybe" "Just")

importNothingCtor :: forall e m. Monad m => Partial => CodegenT e m (QualifiedName Proper)
importNothingCtor = Tidy.Codegen.Monad.importFrom "Data.Maybe" (Tidy.Codegen.Monad.importCtor "Maybe" "Nothing")

importLeftCtor :: forall e m. Monad m => Partial => CodegenT e m (QualifiedName Proper)
importLeftCtor = Tidy.Codegen.Monad.importFrom "Data.Either" (Tidy.Codegen.Monad.importCtor "Either" "Left")

importRightCtor :: forall e m. Monad m => Partial => CodegenT e m (QualifiedName Proper)
importRightCtor = Tidy.Codegen.Monad.importFrom "Data.Either" (Tidy.Codegen.Monad.importCtor "Either" "Right")

----------

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

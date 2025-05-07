module Fakerjs2.Helpers.FromRegExp.Encoder.Imports where

import Prelude

import PureScript.CST.Types (Ident, Proper, QualifiedName)
import Tidy.Codegen.Monad (class ToImportFrom, CodegenT, importCtor, importType)
import Tidy.Codegen.Monad as Tidy.Codegen.Monad

importUnsafeGenerateFn :: forall e1321 m1322. Monad m1322 => Partial => CodegenT e1321 m1322 (QualifiedName Ident)
importUnsafeGenerateFn = Tidy.Codegen.Monad.importFrom "Fakerjs2.Helpers.FromRegExp.Generate" (Tidy.Codegen.Monad.importValue "unsafeGenerate")

importFromRegExp :: forall e11 m12 name14 imp15. Monad m12 => Partial => ToImportFrom name14 imp15 => name14 -> CodegenT e11 m12 imp15
importFromRegExp = Tidy.Codegen.Monad.importFrom "Fakerjs2.Helpers.FromRegExp.Types"

importAtomCtor :: forall e m. Monad m => Partial => String -> CodegenT e m (QualifiedName Proper)
importAtomCtor ctorName = importFromRegExp (importCtor "Atom" ctorName)

importQuantifierCtor :: forall e m. Monad m => Partial => String -> CodegenT e m (QualifiedName Proper)
importQuantifierCtor ctorName = importFromRegExp (importCtor "Quantifier" ctorName)

importTypeSafePatternCtor :: forall e m. Monad m => Partial => String -> CodegenT e m (QualifiedName Proper)
importTypeSafePatternCtor ctorName = importFromRegExp (importCtor "TypeSafePattern" ctorName)

importTypeSafePatternType :: forall e m. Monad m => Partial => CodegenT e m (QualifiedName Proper)
importTypeSafePatternType = importFromRegExp (importType "TypeSafePattern")

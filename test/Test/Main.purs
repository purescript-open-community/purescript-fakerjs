module Test.Main where

import Prelude

import Effect (Effect)
import Test.Spec (describe)
import Test.Spec.Reporter (consoleReporter)
import Test.Spec.Runner.Node (runSpecAndExitProcess)
import Test.Tests.FunctionCall as Test.Tests.FunctionCall
import Test.Tests.StringWithCalls as Test.Tests.StringWithCalls
import Test.Tests.FromRegExp as Test.Tests.FromRegExp
import Test.Tests.Luhn as Test.Tests.Luhn

main ∷ Effect Unit
main = runSpecAndExitProcess [ consoleReporter ] do
  describe "FunctionCall" $ Test.Tests.FunctionCall.spec
  describe "StringWithCalls" $ Test.Tests.StringWithCalls.spec
  describe "FromRegExp" $ Test.Tests.FromRegExp.spec
  describe "Luhn" $ Test.Tests.Luhn.spec

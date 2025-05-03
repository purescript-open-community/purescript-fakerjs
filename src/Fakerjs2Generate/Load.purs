module Fakerjs2Generate.Load where

import Data.Argonaut.Core as J
import Effect.Aff (Aff)
import Effect.Uncurried (EffectFn1, runEffectFn1)
import Promise (Promise)
import Promise.Aff (toAffE)

foreign import loadPathDefaultImpl :: EffectFn1 String (Promise J.Json)

loadPathDefault :: String -> Aff J.Json
loadPathDefault path = toAffE (runEffectFn1 loadPathDefaultImpl path)

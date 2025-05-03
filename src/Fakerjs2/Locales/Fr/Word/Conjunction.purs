module Fakerjs2.Locales.Fr.Word.Conjunction (conjunction) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Conjunction)
import Unsafe.Coerce (unsafeCoerce)

conjunction :: Conjunction
conjunction = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "que"
  , "afin que"
  , "pour que"
  , "de sorte que"
  , "de façon à ce que"
  , "de manière à ce que"
  , "de peur que"
  , "de crainte que"
  , "puisque"
  , "parce que"
  , "comme"
  , "vu que"
  , "étant donné que"
  , "du fait que"
  , "du moment que"
  , "d’autant que"
  , "même si"
  , "quoique"
  , "bien que"
  , "si"
  , "dans la mesure où"
  , "à condition que"
  , "pourvu que"
  , "au cas où"
  , "si bien que"
  , "de façon que"
  , "au point que"
  , "tant"
  , "tellement"
  , "assez"
  , "trop"
  , "avant que"
  , "jusqu’à ce que"
  , "lorsque"
  , "quand"
  , "aussitôt que"
  , "sitôt que"
  , "dès que"
  , "après que"
  , "pendant que"
  , "tant que"
  , "alors que"
  , "tandis que"
  , "sans que"
  ]

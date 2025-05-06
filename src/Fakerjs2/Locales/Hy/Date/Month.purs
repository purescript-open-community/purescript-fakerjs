module Fakerjs2.Locales.Hy.Date.Month (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Maybe (Maybe(..))
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

abbr = Just
  ( (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "Ապր", "Դկտ", "Հլս", "Հկտ", "Հնս", "Հնվ", "Մյս", "Մրտ", "Նմբ", "Սպտ", "Փտր", "Օգս" ]
  )

wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Ապրիլ"
  , "Դեկտեմբեր"
  , "Հոկտեմբեր"
  , "Հուլիս"
  , "Հունիս"
  , "Հունվար"
  , "Մայիս"
  , "Մարտ"
  , "Նոյեմբեր"
  , "Սեպտեմբեր"
  , "Փետրվար"
  , "Օգոստոս"
  ]

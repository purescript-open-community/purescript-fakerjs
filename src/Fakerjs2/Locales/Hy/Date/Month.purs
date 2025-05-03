module Fakerjs2.Locales.Hy.Date.Month (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (MonthAbbr, MonthWide)
import Unsafe.Coerce (unsafeCoerce)

abbr :: MonthAbbr
abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Ապր", "Դկտ", "Հլս", "Հկտ", "Հնս", "Հնվ", "Մյս", "Մրտ", "Նմբ", "Սպտ", "Փտր", "Օգս" ]

wide :: MonthWide
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

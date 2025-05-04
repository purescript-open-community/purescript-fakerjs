module Fakerjs2.Locales.En.Finance.CreditCard.DinersClub (diners_club) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

diners_club = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "30[0-5]#-######-###L", "36##-######-###L", "54##-####-####-###L" ]

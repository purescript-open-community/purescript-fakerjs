module Fakerjs2.Locales.PtPt.Person.Prefix (female, generic, male) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

female = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Adv.ª", "Arq.ª", "Dra.", "Enf.ª", "Eng.ª", "Prof.ª", "Sra.", "Téc.ª" ]

generic = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Adv."
  , "Adv.ª"
  , "Arq."
  , "Arq.ª"
  , "Dr."
  , "Dra."
  , "Enf."
  , "Enf.ª"
  , "Eng.ª"
  , "Eng.º"
  , "Prof."
  , "Prof.ª"
  , "Sr."
  , "Sra."
  , "Téc."
  , "Téc.ª"
  ]

male = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Adv.", "Arq.", "Dr.", "Enf.", "Eng.º", "Prof.", "Sr.", "Téc." ]

module Fakerjs2.Locales.PtPt.Person.Prefix (female, generic, male) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (PrefixFemale, PrefixGeneric, PrefixMale)
import Unsafe.Coerce (unsafeCoerce)

female :: PrefixFemale
female = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Adv.ª", "Arq.ª", "Dra.", "Enf.ª", "Eng.ª", "Prof.ª", "Sra.", "Téc.ª" ]

generic :: PrefixGeneric
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

male :: PrefixMale
male = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Adv.", "Arq.", "Dr.", "Enf.", "Eng.º", "Prof.", "Sr.", "Téc." ]

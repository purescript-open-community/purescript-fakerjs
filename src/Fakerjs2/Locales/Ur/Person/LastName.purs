module Fakerjs2.Locales.Ur.Person.LastName (generic) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (LastNameGeneric)
import Unsafe.Coerce (unsafeCoerce)

generic :: LastNameGeneric
generic = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "احمد"
  , "اعوان"
  , "الحق"
  , "الل\x00064eہ"
  , "ا\x000653فریدی"
  , "باجوڑی"
  , "جان"
  , "جبران"
  , "حسین"
  , "خان"
  , "راجپوت"
  , "شریف"
  , "شنواری"
  , "عبدالی"
  , "علی"
  , "ملوک"
  , "ملک"
  , "میمن"
  , "نیازی"
  , "چوہدری"
  ]

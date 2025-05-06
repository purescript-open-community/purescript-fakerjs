module Fakerjs2.Locales.El.Commerce.ProductName (adjective, material, product) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

adjective = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Άδεια"
  , "Αγροτικό"
  , "Απίστευτο"
  , "Εργονομικό"
  , "Κομψό"
  , "Μικρό"
  , "Πρακτικό"
  , "Φανταστικό"
  , "Χειροποίητα"
  , "Χειροποίητο"
  ]

material = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Κατεψυγμένο", "Μέταλο", "Ξύλινο", "Πλαστικό", "Φρέσκο" ]

product = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Αυτοκίνητο"
  , "Γάντια"
  , "Καπέλο"
  , "Καρέκλα"
  , "Κοτόπουλο"
  , "Λουκάνικα"
  , "Μπάλα"
  , "Παντελόνι"
  , "Παπούτσια"
  , "Πετσέτες"
  , "Πληκτρολόγιο"
  , "Ποδήλατο"
  , "Ποντίκι"
  , "Πουκάμισο"
  , "Σαλάτα"
  , "Σαπούνι"
  , "Τραπέζι"
  , "Τυρί"
  , "Τόνος"
  , "Υπολογιστής"
  , "Ωάρι"
  ]

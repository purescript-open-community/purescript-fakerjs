module Fakerjs2.Locales.El.Commerce.ProductName (adjective, material, product) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (ProductNameAdjective, ProductNameMaterial, ProductNameProduct)
import Unsafe.Coerce (unsafeCoerce)

adjective :: ProductNameAdjective
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

material :: ProductNameMaterial
material = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Κατεψυγμένο", "Μέταλο", "Ξύλινο", "Πλαστικό", "Φρέσκο" ]

product :: ProductNameProduct
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

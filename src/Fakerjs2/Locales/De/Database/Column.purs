module Fakerjs2.Locales.De.Database.Column (column) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

column = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "aktualisiertAm"
  , "artikelnummer"
  , "avatar"
  , "bearbeitetAm"
  , "email"
  , "erstelltAm"
  , "geburtsdatum"
  , "gruppe"
  , "id"
  , "kategorie"
  , "kommentar"
  , "nachname"
  , "name"
  , "passwort"
  , "status"
  , "telefonnummer"
  , "titel"
  , "token"
  , "vorname"
  ]

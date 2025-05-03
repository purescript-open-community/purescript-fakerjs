module Fakerjs2.Locales.EnCa.Location.PostcodeByState (postcode_by_state) where

import Data.String.NonEmpty (unsafeFromString)
import Fakerjs2.Types (PostcodeByState)

postcode_by_state :: PostcodeByState
postcode_by_state =
  { "NU": unsafeFromString
      "{{helpers.fromRegExp(X[0-9][ABCEGHJ-NPRSTVW-Z] [0-9][ABCEGHJ-NPRSTVW-Z][0-9])}}"
  , "NB": unsafeFromString
      "{{helpers.fromRegExp(E[0-9][ABCEGHJ-NPRSTVW-Z] [0-9][ABCEGHJ-NPRSTVW-Z][0-9])}}"
  , "BC": unsafeFromString
      "{{helpers.fromRegExp(V[0-9][ABCEGHJ-NPRSTVW-Z] [0-9][ABCEGHJ-NPRSTVW-Z][0-9])}}"
  , "AB": unsafeFromString
      "{{helpers.fromRegExp(T[0-9][ABCEGHJ-NPRSTVW-Z] [0-9][ABCEGHJ-NPRSTVW-Z][0-9])}}"
  , "MB": unsafeFromString
      "{{helpers.fromRegExp(R[0-9][ABCEGHJ-NPRSTVW-Z] [0-9][ABCEGHJ-NPRSTVW-Z][0-9])}}"
  , "NS": unsafeFromString
      "{{helpers.fromRegExp(B[0-9][ABCEGHJ-NPRSTVW-Z] [0-9][ABCEGHJ-NPRSTVW-Z][0-9])}}"
  , "NL": unsafeFromString
      "{{helpers.fromRegExp(A[0-9][ABCEGHJ-NPRSTVW-Z] [0-9][ABCEGHJ-NPRSTVW-Z][0-9])}}"
  , "NT": unsafeFromString
      "{{helpers.fromRegExp(X[0-9][ABCEGHJ-NPRSTVW-Z] [0-9][ABCEGHJ-NPRSTVW-Z][0-9])}}"
  , "PE": unsafeFromString
      "{{helpers.fromRegExp(C[0-9][ABCEGHJ-NPRSTVW-Z] [0-9][ABCEGHJ-NPRSTVW-Z][0-9])}}"
  , "ON": unsafeFromString
      "{{helpers.fromRegExp([KLMNP][0-9][ABCEGHJ-NPRSTVW-Z] [0-9][ABCEGHJ-NPRSTVW-Z][0-9])}}"
  , "SK": unsafeFromString
      "{{helpers.fromRegExp(S[0-9][ABCEGHJ-NPRSTVW-Z] [0-9][ABCEGHJ-NPRSTVW-Z][0-9])}}"
  , "QC": unsafeFromString
      "{{helpers.fromRegExp([GHJ][0-9][ABCEGHJ-NPRSTVW-Z] [0-9][ABCEGHJ-NPRSTVW-Z][0-9])}}"
  , "YT": unsafeFromString
      "{{helpers.fromRegExp(Y[0-9][ABCEGHJ-NPRSTVW-Z] [0-9][ABCEGHJ-NPRSTVW-Z][0-9])}}"
  }

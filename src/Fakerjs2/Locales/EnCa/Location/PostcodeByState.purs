module Fakerjs2.Locales.EnCa.Location.PostcodeByState (postcode_by_state) where

import Data.Either (Either(..))

postcode_by_state =
  { "AB": Left "{{helpers.fromRegExp(T[0-9][ABCEGHJ-NPRSTVW-Z] [0-9][ABCEGHJ-NPRSTVW-Z][0-9])}}"
  , "BC": Left "{{helpers.fromRegExp(V[0-9][ABCEGHJ-NPRSTVW-Z] [0-9][ABCEGHJ-NPRSTVW-Z][0-9])}}"
  , "MB": Left "{{helpers.fromRegExp(R[0-9][ABCEGHJ-NPRSTVW-Z] [0-9][ABCEGHJ-NPRSTVW-Z][0-9])}}"
  , "NB": Left "{{helpers.fromRegExp(E[0-9][ABCEGHJ-NPRSTVW-Z] [0-9][ABCEGHJ-NPRSTVW-Z][0-9])}}"
  , "NL": Left "{{helpers.fromRegExp(A[0-9][ABCEGHJ-NPRSTVW-Z] [0-9][ABCEGHJ-NPRSTVW-Z][0-9])}}"
  , "NS": Left "{{helpers.fromRegExp(B[0-9][ABCEGHJ-NPRSTVW-Z] [0-9][ABCEGHJ-NPRSTVW-Z][0-9])}}"
  , "NT": Left "{{helpers.fromRegExp(X[0-9][ABCEGHJ-NPRSTVW-Z] [0-9][ABCEGHJ-NPRSTVW-Z][0-9])}}"
  , "NU": Left "{{helpers.fromRegExp(X[0-9][ABCEGHJ-NPRSTVW-Z] [0-9][ABCEGHJ-NPRSTVW-Z][0-9])}}"
  , "ON": Left
      "{{helpers.fromRegExp([KLMNP][0-9][ABCEGHJ-NPRSTVW-Z] [0-9][ABCEGHJ-NPRSTVW-Z][0-9])}}"
  , "PE": Left "{{helpers.fromRegExp(C[0-9][ABCEGHJ-NPRSTVW-Z] [0-9][ABCEGHJ-NPRSTVW-Z][0-9])}}"
  , "QC": Left "{{helpers.fromRegExp([GHJ][0-9][ABCEGHJ-NPRSTVW-Z] [0-9][ABCEGHJ-NPRSTVW-Z][0-9])}}"
  , "SK": Left "{{helpers.fromRegExp(S[0-9][ABCEGHJ-NPRSTVW-Z] [0-9][ABCEGHJ-NPRSTVW-Z][0-9])}}"
  , "YT": Left "{{helpers.fromRegExp(Y[0-9][ABCEGHJ-NPRSTVW-Z] [0-9][ABCEGHJ-NPRSTVW-Z][0-9])}}"
  }

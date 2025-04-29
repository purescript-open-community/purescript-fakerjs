module Fakerjs2.Locales.Base.Internet.HttpStatusCode
  ( clientError
  , informational
  , redirection
  , serverError
  , success
  ) where

import Data.Array.NonEmpty (NonEmptyArray)
import Fakerjs2.Types (HttpStatusCodeClientError, HttpStatusCodeInformational, HttpStatusCodeRedirection, HttpStatusCodeServerError, HttpStatusCodeSuccess)
import Unsafe.Coerce (unsafeCoerce)

clientError :: HttpStatusCodeClientError
clientError = (unsafeCoerce :: Array Int -> NonEmptyArray Int)
  [ 400
  , 401
  , 402
  , 403
  , 404
  , 405
  , 406
  , 407
  , 408
  , 409
  , 410
  , 411
  , 412
  , 413
  , 414
  , 415
  , 416
  , 417
  , 418
  , 421
  , 422
  , 423
  , 424
  , 425
  , 426
  , 428
  , 429
  , 431
  , 451
  ]

informational :: HttpStatusCodeInformational
informational = (unsafeCoerce :: Array Int -> NonEmptyArray Int) [ 100, 101, 102, 103 ]

redirection :: HttpStatusCodeRedirection
redirection = (unsafeCoerce :: Array Int -> NonEmptyArray Int)
  [ 300, 301, 302, 303, 304, 305, 306, 307, 308 ]

serverError :: HttpStatusCodeServerError
serverError = (unsafeCoerce :: Array Int -> NonEmptyArray Int)
  [ 500, 501, 502, 503, 504, 505, 506, 507, 508, 510, 511 ]

success :: HttpStatusCodeSuccess
success = (unsafeCoerce :: Array Int -> NonEmptyArray Int)
  [ 200, 201, 202, 203, 204, 205, 206, 207, 208, 226 ]

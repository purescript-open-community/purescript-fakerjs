module Fakerjs2.Locales.EnUs.Location.PostcodeByState (postcode_by_state) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString, unsafeFromString)
import Fakerjs2.Types (PostcodeByState)
import Unsafe.Coerce (unsafeCoerce)

postcode_by_state :: PostcodeByState
postcode_by_state =
  { "NJ": unsafeFromString "0{{number.int({\"min\": 7001,\"max\": 8989})}}"
  , "IN": unsafeFromString "{{number.int({\"min\": 46001,\"max\": 47997})}}"
  , "DC": unsafeFromString "{{number.int({\"min\": 20001,\"max\": 20039})}}"
  , "AZ": unsafeFromString "{{number.int({\"min\": 85001,\"max\": 86556})}}"
  , "AL": unsafeFromString "{{number.int({\"min\": 35004,\"max\": 36925})}}"
  , "AK": unsafeFromString "{{number.int({\"min\": 99501,\"max\": 99950})}}"
  , "AR": (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "{{number.int({\"min\": 71601,\"max\": 72642})}}"
      , "{{number.int({\"min\": 72644,\"max\": 72959})}}"
      ]
  , "CO": unsafeFromString "{{number.int({\"min\": 80001,\"max\": 81658})}}"
  , "CA": unsafeFromString "{{number.int({\"min\": 90001,\"max\": 96162})}}"
  , "CT": unsafeFromString "0{{number.int({\"min\": 6001,\"max\": 6389})}}"
  , "HI": (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "{{number.int({\"min\": 96701,\"max\": 96798})}}"
      , "{{number.int({\"min\": 96801,\"max\": 96898})}}"
      ]
  , "FL": (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "{{number.int({\"min\": 32003,\"max\": 32099})}}"
      , "{{number.int({\"min\": 32102,\"max\": 32198})}}"
      , "{{number.int({\"min\": 32201,\"max\": 32290})}}"
      , "{{number.int({\"min\": 32301,\"max\": 32399})}}"
      , "{{number.int({\"min\": 32401,\"max\": 32466})}}"
      , "{{number.int({\"min\": 32501,\"max\": 32592})}}"
      , "{{number.int({\"min\": 32601,\"max\": 32697})}}"
      , "{{number.int({\"min\": 32701,\"max\": 32799})}}"
      , "{{number.int({\"min\": 32801,\"max\": 32899})}}"
      , "{{number.int({\"min\": 32901,\"max\": 32978})}}"
      , "{{number.int({\"min\": 33001,\"max\": 33097})}}"
      , "{{number.int({\"min\": 33101,\"max\": 33199})}}"
      , "{{number.int({\"min\": 33206,\"max\": 33299})}}"
      , "{{number.int({\"min\": 33301,\"max\": 33394})}}"
      , "{{number.int({\"min\": 33401,\"max\": 33499})}}"
      , "{{number.int({\"min\": 33503,\"max\": 33598})}}"
      , "{{number.int({\"min\": 33601,\"max\": 33694})}}"
      , "{{number.int({\"min\": 33701,\"max\": 33786})}}"
      , "{{number.int({\"min\": 33801,\"max\": 33898})}}"
      , "{{number.int({\"min\": 33900,\"max\": 33994})}}"
      , "{{number.int({\"min\": 34101,\"max\": 34146})}}"
      , "{{number.int({\"min\": 34201,\"max\": 34295})}}"
      , "{{number.int({\"min\": 34420,\"max\": 34498})}}"
      , "{{number.int({\"min\": 34601,\"max\": 34698})}}"
      , "{{number.int({\"min\": 34705,\"max\": 34797})}}"
      , "{{number.int({\"min\": 34945,\"max\": 34997})}}"
      ]
  , "DE": unsafeFromString "{{number.int({\"min\": 19701,\"max\": 19980})}}"
  , "GA": unsafeFromString "{{number.int({\"min\": 30001,\"max\": 31999})}}"
  , "ID": (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "{{number.int({\"min\": 83201,\"max\": 83406})}}"
      , "{{number.int({\"min\": 83415,\"max\": 83876})}}"
      ]
  , "IA": unsafeFromString "{{number.int({\"min\": 50001,\"max\": 52809})}}"
  , "IL": unsafeFromString "{{number.int({\"min\": 60001,\"max\": 62999})}}"
  , "MN": unsafeFromString "{{number.int({\"min\": 55001,\"max\": 56763})}}"
  , "MA": unsafeFromString "0{{number.int({\"min\": 1001,\"max\": 2791})}}"
  , "KY": unsafeFromString "{{number.int({\"min\": 40003,\"max\": 42788})}}"
  , "KS": unsafeFromString "{{number.int({\"min\": 66002,\"max\": 67954})}}"
  , "LA": unsafeFromString "{{number.int({\"min\": 70001,\"max\": 71232})}}"
  , "ME": unsafeFromString "0{{number.int({\"min\": 3901,\"max\": 4992})}}"
  , "MD": unsafeFromString "{{number.int({\"min\": 20899,\"max\": 20908})}}"
  , "MI": unsafeFromString "{{number.int({\"min\": 48001,\"max\": 49971})}}"
  , "NC": unsafeFromString "{{number.int({\"min\": 27006,\"max\": 28909})}}"
  , "MS": unsafeFromString "{{number.int({\"min\": 38601,\"max\": 39776})}}"
  , "MO": unsafeFromString "{{number.int({\"min\": 63001,\"max\": 65899})}}"
  , "MT": unsafeFromString "{{number.int({\"min\": 59001,\"max\": 59937})}}"
  , "NE": unsafeFromString "{{number.int({\"min\": 68001,\"max\": 68118})}}"
  , "ND": unsafeFromString "{{number.int({\"min\": 58001,\"max\": 58856})}}"
  , "NH": unsafeFromString "0{{number.int({\"min\": 3031,\"max\": 3897})}}"
  , "PR": (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "00{{number.int({\"min\": 601,\"max\": 799})}}"
      , "00{{number.int({\"min\": 901,\"max\": 988})}}"
      ]
  , "OH": unsafeFromString "{{number.int({\"min\": 43001,\"max\": 45999})}}"
  , "NV": unsafeFromString "{{number.int({\"min\": 88901,\"max\": 89883})}}"
  , "NM": unsafeFromString "{{number.int({\"min\": 87001,\"max\": 88441})}}"
  , "NY": unsafeFromString "0{{number.int({\"min\": 6390,\"max\": 6390})}}"
  , "OR": unsafeFromString "{{number.int({\"min\": 97001,\"max\": 97920})}}"
  , "OK": unsafeFromString "{{number.int({\"min\": 73001,\"max\": 73199})}}"
  , "PA": unsafeFromString "{{number.int({\"min\": 15001,\"max\": 19640})}}"
  , "VT": unsafeFromString "0{{number.int({\"min\": 5001,\"max\": 5495})}}"
  , "TN": unsafeFromString "{{number.int({\"min\": 37010,\"max\": 38589})}}"
  , "SC": unsafeFromString "{{number.int({\"min\": 29001,\"max\": 29948})}}"
  , "RI": unsafeFromString "0{{number.int({\"min\": 2801,\"max\": 2940})}}"
  , "SD": unsafeFromString "{{number.int({\"min\": 57001,\"max\": 57799})}}"
  , "UT": unsafeFromString "{{number.int({\"min\": 84001,\"max\": 84784})}}"
  , "TX": unsafeFromString "{{number.int({\"min\": 75503,\"max\": 79999})}}"
  , "VA": unsafeFromString "{{number.int({\"min\": 22201,\"max\": 24599})}}"
  , "WI": unsafeFromString "{{number.int({\"min\": 53001,\"max\": 54990})}}"
  , "WA": unsafeFromString "{{number.int({\"min\": 98001,\"max\": 99403})}}"
  , "WV": unsafeFromString "{{number.int({\"min\": 24701,\"max\": 26886})}}"
  , "WY": unsafeFromString "{{number.int({\"min\": 82001,\"max\": 83128})}}"
  }

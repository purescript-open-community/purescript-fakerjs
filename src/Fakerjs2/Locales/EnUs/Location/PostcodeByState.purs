module Fakerjs2.Locales.EnUs.Location.PostcodeByState (postcode_by_state) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Either (Either(..))
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

postcode_by_state =
  { "AK": Left "{{number.int({\"min\": 99501,\"max\": 99950})}}"
  , "AL": Left "{{number.int({\"min\": 35004,\"max\": 36925})}}"
  , "AR": Right
      ( (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
          [ "{{number.int({\"min\": 71601,\"max\": 72642})}}"
          , "{{number.int({\"min\": 72644,\"max\": 72959})}}"
          ]
      )
  , "AZ": Left "{{number.int({\"min\": 85001,\"max\": 86556})}}"
  , "CA": Left "{{number.int({\"min\": 90001,\"max\": 96162})}}"
  , "CO": Left "{{number.int({\"min\": 80001,\"max\": 81658})}}"
  , "CT": Left "0{{number.int({\"min\": 6001,\"max\": 6389})}}"
  , "DC": Left "{{number.int({\"min\": 20001,\"max\": 20039})}}"
  , "DE": Left "{{number.int({\"min\": 19701,\"max\": 19980})}}"
  , "FL": Right
      ( (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
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
      )
  , "GA": Left "{{number.int({\"min\": 30001,\"max\": 31999})}}"
  , "HI": Right
      ( (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
          [ "{{number.int({\"min\": 96701,\"max\": 96798})}}"
          , "{{number.int({\"min\": 96801,\"max\": 96898})}}"
          ]
      )
  , "IA": Left "{{number.int({\"min\": 50001,\"max\": 52809})}}"
  , "ID": Right
      ( (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
          [ "{{number.int({\"min\": 83201,\"max\": 83406})}}"
          , "{{number.int({\"min\": 83415,\"max\": 83876})}}"
          ]
      )
  , "IL": Left "{{number.int({\"min\": 60001,\"max\": 62999})}}"
  , "IN": Left "{{number.int({\"min\": 46001,\"max\": 47997})}}"
  , "KS": Left "{{number.int({\"min\": 66002,\"max\": 67954})}}"
  , "KY": Left "{{number.int({\"min\": 40003,\"max\": 42788})}}"
  , "LA": Left "{{number.int({\"min\": 70001,\"max\": 71232})}}"
  , "MA": Left "0{{number.int({\"min\": 1001,\"max\": 2791})}}"
  , "MD": Left "{{number.int({\"min\": 20899,\"max\": 20908})}}"
  , "ME": Left "0{{number.int({\"min\": 3901,\"max\": 4992})}}"
  , "MI": Left "{{number.int({\"min\": 48001,\"max\": 49971})}}"
  , "MN": Left "{{number.int({\"min\": 55001,\"max\": 56763})}}"
  , "MO": Left "{{number.int({\"min\": 63001,\"max\": 65899})}}"
  , "MS": Left "{{number.int({\"min\": 38601,\"max\": 39776})}}"
  , "MT": Left "{{number.int({\"min\": 59001,\"max\": 59937})}}"
  , "NC": Left "{{number.int({\"min\": 27006,\"max\": 28909})}}"
  , "ND": Left "{{number.int({\"min\": 58001,\"max\": 58856})}}"
  , "NE": Left "{{number.int({\"min\": 68001,\"max\": 68118})}}"
  , "NH": Left "0{{number.int({\"min\": 3031,\"max\": 3897})}}"
  , "NJ": Left "0{{number.int({\"min\": 7001,\"max\": 8989})}}"
  , "NM": Left "{{number.int({\"min\": 87001,\"max\": 88441})}}"
  , "NV": Left "{{number.int({\"min\": 88901,\"max\": 89883})}}"
  , "NY": Left "0{{number.int({\"min\": 6390,\"max\": 6390})}}"
  , "OH": Left "{{number.int({\"min\": 43001,\"max\": 45999})}}"
  , "OK": Left "{{number.int({\"min\": 73001,\"max\": 73199})}}"
  , "OR": Left "{{number.int({\"min\": 97001,\"max\": 97920})}}"
  , "PA": Left "{{number.int({\"min\": 15001,\"max\": 19640})}}"
  , "PR": Right
      ( (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
          [ "00{{number.int({\"min\": 601,\"max\": 799})}}"
          , "00{{number.int({\"min\": 901,\"max\": 988})}}"
          ]
      )
  , "RI": Left "0{{number.int({\"min\": 2801,\"max\": 2940})}}"
  , "SC": Left "{{number.int({\"min\": 29001,\"max\": 29948})}}"
  , "SD": Left "{{number.int({\"min\": 57001,\"max\": 57799})}}"
  , "TN": Left "{{number.int({\"min\": 37010,\"max\": 38589})}}"
  , "TX": Left "{{number.int({\"min\": 75503,\"max\": 79999})}}"
  , "UT": Left "{{number.int({\"min\": 84001,\"max\": 84784})}}"
  , "VA": Left "{{number.int({\"min\": 22201,\"max\": 24599})}}"
  , "VT": Left "0{{number.int({\"min\": 5001,\"max\": 5495})}}"
  , "WA": Left "{{number.int({\"min\": 98001,\"max\": 99403})}}"
  , "WI": Left "{{number.int({\"min\": 53001,\"max\": 54990})}}"
  , "WV": Left "{{number.int({\"min\": 24701,\"max\": 26886})}}"
  , "WY": Left "{{number.int({\"min\": 82001,\"max\": 83128})}}"
  }

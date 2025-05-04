module Fakerjs2.Locales.En.Airline.Airplane (airplane) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

airplane =
  ( unsafeCoerce
      :: Array { iataTypeCode :: String, name :: String }
      -> NonEmptyArray { iataTypeCode :: NonEmptyString, name :: NonEmptyString }
  )
    [ { iataTypeCode: "SSC", name: "Aerospatiale/BAC Concorde" }
    , { iataTypeCode: "AB3", name: "Airbus A300" }
    , { iataTypeCode: "310", name: "Airbus A310" }
    , { iataTypeCode: "312", name: "Airbus A310-200" }
    , { iataTypeCode: "313", name: "Airbus A310-300" }
    , { iataTypeCode: "318", name: "Airbus A318" }
    , { iataTypeCode: "319", name: "Airbus A319" }
    , { iataTypeCode: "31N", name: "Airbus A319neo" }
    , { iataTypeCode: "320", name: "Airbus A320" }
    , { iataTypeCode: "32N", name: "Airbus A320neo" }
    , { iataTypeCode: "321", name: "Airbus A321" }
    , { iataTypeCode: "32Q", name: "Airbus A321neo" }
    , { iataTypeCode: "330", name: "Airbus A330" }
    , { iataTypeCode: "332", name: "Airbus A330-200" }
    , { iataTypeCode: "333", name: "Airbus A330-300" }
    , { iataTypeCode: "338", name: "Airbus A330-800neo" }
    , { iataTypeCode: "339", name: "Airbus A330-900neo" }
    , { iataTypeCode: "340", name: "Airbus A340" }
    , { iataTypeCode: "342", name: "Airbus A340-200" }
    , { iataTypeCode: "343", name: "Airbus A340-300" }
    , { iataTypeCode: "345", name: "Airbus A340-500" }
    , { iataTypeCode: "346", name: "Airbus A340-600" }
    , { iataTypeCode: "350", name: "Airbus A350" }
    , { iataTypeCode: "359", name: "Airbus A350-900" }
    , { iataTypeCode: "351", name: "Airbus A350-1000" }
    , { iataTypeCode: "380", name: "Airbus A380" }
    , { iataTypeCode: "388", name: "Airbus A380-800" }
    , { iataTypeCode: "ANF", name: "Antonov An-12" }
    , { iataTypeCode: "AN4", name: "Antonov An-24" }
    , { iataTypeCode: "A26", name: "Antonov An-26" }
    , { iataTypeCode: "A28", name: "Antonov An-28" }
    , { iataTypeCode: "A30", name: "Antonov An-30" }
    , { iataTypeCode: "A32", name: "Antonov An-32" }
    , { iataTypeCode: "AN7", name: "Antonov An-72" }
    , { iataTypeCode: "A4F", name: "Antonov An-124 Ruslan" }
    , { iataTypeCode: "A40", name: "Antonov An-140" }
    , { iataTypeCode: "A81", name: "Antonov An-148" }
    , { iataTypeCode: "A58", name: "Antonov An-158" }
    , { iataTypeCode: "A5F", name: "Antonov An-225 Mriya" }
    , { iataTypeCode: "703", name: "Boeing 707" }
    , { iataTypeCode: "717", name: "Boeing 717" }
    , { iataTypeCode: "B72", name: "Boeing 720B" }
    , { iataTypeCode: "727", name: "Boeing 727" }
    , { iataTypeCode: "721", name: "Boeing 727-100" }
    , { iataTypeCode: "722", name: "Boeing 727-200" }
    , { iataTypeCode: "7M7", name: "Boeing 737 MAX 7" }
    , { iataTypeCode: "7M8", name: "Boeing 737 MAX 8" }
    , { iataTypeCode: "7M9", name: "Boeing 737 MAX 9" }
    , { iataTypeCode: "7MJ", name: "Boeing 737 MAX 10" }
    , { iataTypeCode: "737", name: "Boeing 737" }
    , { iataTypeCode: "731", name: "Boeing 737-100" }
    , { iataTypeCode: "732", name: "Boeing 737-200" }
    , { iataTypeCode: "733", name: "Boeing 737-300" }
    , { iataTypeCode: "734", name: "Boeing 737-400" }
    , { iataTypeCode: "735", name: "Boeing 737-500" }
    , { iataTypeCode: "736", name: "Boeing 737-600" }
    , { iataTypeCode: "73G", name: "Boeing 737-700" }
    , { iataTypeCode: "738", name: "Boeing 737-800" }
    , { iataTypeCode: "739", name: "Boeing 737-900" }
    , { iataTypeCode: "747", name: "Boeing 747" }
    , { iataTypeCode: "741", name: "Boeing 747-100" }
    , { iataTypeCode: "742", name: "Boeing 747-200" }
    , { iataTypeCode: "743", name: "Boeing 747-300" }
    , { iataTypeCode: "744", name: "Boeing 747-400" }
    , { iataTypeCode: "74J", name: "Boeing 747-400D" }
    , { iataTypeCode: "748", name: "Boeing 747-8" }
    , { iataTypeCode: "74L", name: "Boeing 747SP" }
    , { iataTypeCode: "74R", name: "Boeing 747SR" }
    , { iataTypeCode: "757", name: "Boeing 757" }
    , { iataTypeCode: "752", name: "Boeing 757-200" }
    , { iataTypeCode: "753", name: "Boeing 757-300" }
    , { iataTypeCode: "767", name: "Boeing 767" }
    , { iataTypeCode: "762", name: "Boeing 767-200" }
    , { iataTypeCode: "763", name: "Boeing 767-300" }
    , { iataTypeCode: "764", name: "Boeing 767-400" }
    , { iataTypeCode: "777", name: "Boeing 777" }
    , { iataTypeCode: "772", name: "Boeing 777-200" }
    , { iataTypeCode: "77L", name: "Boeing 777-200LR" }
    , { iataTypeCode: "773", name: "Boeing 777-300" }
    , { iataTypeCode: "77W", name: "Boeing 777-300ER" }
    , { iataTypeCode: "787", name: "Boeing 787" }
    , { iataTypeCode: "788", name: "Boeing 787-8" }
    , { iataTypeCode: "789", name: "Boeing 787-9" }
    , { iataTypeCode: "781", name: "Boeing 787-10" }
    , { iataTypeCode: "CCJ", name: "Canadair Challenger" }
    , { iataTypeCode: "CL4", name: "Canadair CL-44" }
    , { iataTypeCode: "CR1", name: "Canadair Regional Jet 100" }
    , { iataTypeCode: "CR2", name: "Canadair Regional Jet 200" }
    , { iataTypeCode: "CR7", name: "Canadair Regional Jet 700" }
    , { iataTypeCode: "CRA", name: "Canadair Regional Jet 705" }
    , { iataTypeCode: "CR9", name: "Canadair Regional Jet 900" }
    , { iataTypeCode: "CRK", name: "Canadair Regional Jet 1000" }
    , { iataTypeCode: "DHP", name: "De Havilland Canada DHC-2 Beaver" }
    , { iataTypeCode: "DHR", name: "De Havilland Canada DHC-2 Turbo-Beaver" }
    , { iataTypeCode: "DHL", name: "De Havilland Canada DHC-3 Otter" }
    , { iataTypeCode: "DHC", name: "De Havilland Canada DHC-4 Caribou" }
    , { iataTypeCode: "DHT", name: "De Havilland Canada DHC-6 Twin Otter" }
    , { iataTypeCode: "DH7", name: "De Havilland Canada DHC-7 Dash 7" }
    , { iataTypeCode: "DH1", name: "De Havilland Canada DHC-8-100 Dash 8 / 8Q" }
    , { iataTypeCode: "DH2", name: "De Havilland Canada DHC-8-200 Dash 8 / 8Q" }
    , { iataTypeCode: "DH3", name: "De Havilland Canada DHC-8-300 Dash 8 / 8Q" }
    , { iataTypeCode: "DH4", name: "De Havilland Canada DHC-8-400 Dash 8Q" }
    , { iataTypeCode: "DHD", name: "De Havilland DH.104 Dove" }
    , { iataTypeCode: "DHH", name: "De Havilland DH.114 Heron" }
    , { iataTypeCode: "D3F", name: "Douglas DC-3" }
    , { iataTypeCode: "D6F", name: "Douglas DC-6" }
    , { iataTypeCode: "D8T", name: "Douglas DC-8-50" }
    , { iataTypeCode: "D8L", name: "Douglas DC-8-62" }
    , { iataTypeCode: "D8Q", name: "Douglas DC-8-72" }
    , { iataTypeCode: "D91", name: "Douglas DC-9-10" }
    , { iataTypeCode: "D92", name: "Douglas DC-9-20" }
    , { iataTypeCode: "D93", name: "Douglas DC-9-30" }
    , { iataTypeCode: "D94", name: "Douglas DC-9-40" }
    , { iataTypeCode: "D95", name: "Douglas DC-9-50" }
    , { iataTypeCode: "D10", name: "Douglas DC-10" }
    , { iataTypeCode: "D1X", name: "Douglas DC-10-10" }
    , { iataTypeCode: "D1Y", name: "Douglas DC-10-30" }
    , { iataTypeCode: "E70", name: "Embraer 170" }
    , { iataTypeCode: "E75", name: "Embraer 175" }
    , { iataTypeCode: "E90", name: "Embraer 190" }
    , { iataTypeCode: "E95", name: "Embraer 195" }
    , { iataTypeCode: "290", name: "Embraer E190-E2" }
    , { iataTypeCode: "295", name: "Embraer E195-E2" }
    , { iataTypeCode: "EMB", name: "Embraer EMB.110 Bandeirante" }
    , { iataTypeCode: "EM2", name: "Embraer EMB.120 Brasilia" }
    , { iataTypeCode: "ER3", name: "Embraer Legacy 600" }
    , { iataTypeCode: "EP1", name: "Embraer Phenom 100" }
    , { iataTypeCode: "EP3", name: "Embraer Phenom 300" }
    , { iataTypeCode: "ER3", name: "Embraer RJ135" }
    , { iataTypeCode: "ERD", name: "Embraer RJ140" }
    , { iataTypeCode: "ER4", name: "Embraer RJ145 Amazon" }
    , { iataTypeCode: "IL8", name: "Ilyushin IL18" }
    , { iataTypeCode: "IL6", name: "Ilyushin IL62" }
    , { iataTypeCode: "IL7", name: "Ilyushin IL76" }
    , { iataTypeCode: "ILW", name: "Ilyushin IL86" }
    , { iataTypeCode: "I93", name: "Ilyushin IL96-300" }
    , { iataTypeCode: "I14", name: "Ilyushin IL114" }
    , { iataTypeCode: "LOH", name: "Lockheed L-182 / 282 / 382 (L-100) Hercules" }
    , { iataTypeCode: "LOE", name: "Lockheed L-188 Electra" }
    , { iataTypeCode: "L10", name: "Lockheed L-1011 Tristar" }
    , { iataTypeCode: "L49", name: "Lockheed L-1049 Super Constellation" }
    , { iataTypeCode: "M11", name: "McDonnell Douglas MD11" }
    , { iataTypeCode: "M80", name: "McDonnell Douglas MD80" }
    , { iataTypeCode: "M81", name: "McDonnell Douglas MD81" }
    , { iataTypeCode: "M82", name: "McDonnell Douglas MD82" }
    , { iataTypeCode: "M83", name: "McDonnell Douglas MD83" }
    , { iataTypeCode: "M87", name: "McDonnell Douglas MD87" }
    , { iataTypeCode: "M88", name: "McDonnell Douglas MD88" }
    , { iataTypeCode: "M90", name: "McDonnell Douglas MD90" }
    , { iataTypeCode: "SU9", name: "Sukhoi Superjet 100-95" }
    , { iataTypeCode: "TU3", name: "Tupolev Tu-134" }
    , { iataTypeCode: "TU5", name: "Tupolev Tu-154" }
    , { iataTypeCode: "T20", name: "Tupolev Tu-204" }
    , { iataTypeCode: "YK4", name: "Yakovlev Yak-40" }
    , { iataTypeCode: "YK2", name: "Yakovlev Yak-42" }
    ]

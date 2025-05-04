module Fakerjs2.Locales.En.Airline.Airline (airline) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

airline =
  ( unsafeCoerce
      :: Array { iataCode :: String, name :: String }
      -> NonEmptyArray { iataCode :: NonEmptyString, name :: NonEmptyString }
  )
    [ { iataCode: "A3", name: "Aegean Airlines" }
    , { iataCode: "SU", name: "Aeroflot" }
    , { iataCode: "AR", name: "Aerolineas Argentinas" }
    , { iataCode: "AM", name: "Aeromexico" }
    , { iataCode: "AH", name: "Air Algerie" }
    , { iataCode: "G9", name: "Air Arabia" }
    , { iataCode: "AC", name: "Air Canada" }
    , { iataCode: "CA", name: "Air China" }
    , { iataCode: "UX", name: "Air Europa" }
    , { iataCode: "AF", name: "Air France" }
    , { iataCode: "AI", name: "Air India" }
    , { iataCode: "MK", name: "Air Mauritius" }
    , { iataCode: "NZ", name: "Air New Zealand" }
    , { iataCode: "PX", name: "Air Niugini" }
    , { iataCode: "VT", name: "Air Tahiti" }
    , { iataCode: "TN", name: "Air Tahiti Nui" }
    , { iataCode: "TS", name: "Air Transat" }
    , { iataCode: "D7", name: "AirAsia X" }
    , { iataCode: "AK", name: "AirAsia" }
    , { iataCode: "SB", name: "Aircalin" }
    , { iataCode: "AS", name: "Alaska Airlines" }
    , { iataCode: "AZ", name: "Alitalia" }
    , { iataCode: "NH", name: "All Nippon Airways" }
    , { iataCode: "G4", name: "Allegiant Air" }
    , { iataCode: "AA", name: "American Airlines" }
    , { iataCode: "OZ", name: "Asiana Airlines" }
    , { iataCode: "AV", name: "Avianca" }
    , { iataCode: "AD", name: "Azul Linhas Aereas Brasileiras" }
    , { iataCode: "ZF", name: "Azur Air" }
    , { iataCode: "JD", name: "Beijing Capital Airlines" }
    , { iataCode: "OB", name: "Boliviana de Aviacion" }
    , { iataCode: "BA", name: "British Airways" }
    , { iataCode: "CX", name: "Cathay Pacific" }
    , { iataCode: "5J", name: "Cebu Pacific Air" }
    , { iataCode: "CI", name: "China Airlines" }
    , { iataCode: "MU", name: "China Eastern Airlines" }
    , { iataCode: "CZ", name: "China Southern Airlines" }
    , { iataCode: "DE", name: "Condor" }
    , { iataCode: "CM", name: "Copa Airlines" }
    , { iataCode: "DL", name: "Delta Air Lines" }
    , { iataCode: "VE", name: "Easyfly" }
    , { iataCode: "U2", name: "EasyJet" }
    , { iataCode: "8J", name: "EcoJet" }
    , { iataCode: "MS", name: "Egyptair" }
    , { iataCode: "LY", name: "El Al" }
    , { iataCode: "EK", name: "Emirates Airlines" }
    , { iataCode: "ET", name: "Ethiopian Airlines" }
    , { iataCode: "EY", name: "Etihad Airways" }
    , { iataCode: "BR", name: "EVA Air" }
    , { iataCode: "FJ", name: "Fiji Airways" }
    , { iataCode: "AY", name: "Finnair" }
    , { iataCode: "FO", name: "Flybondi" }
    , { iataCode: "FZ", name: "Flydubai" }
    , { iataCode: "FA", name: "FlySafair" }
    , { iataCode: "F9", name: "Frontier Airlines" }
    , { iataCode: "GA", name: "Garuda Indonesia" }
    , { iataCode: "G8", name: "Go First" }
    , { iataCode: "G3", name: "Gol Linhas Aereas Inteligentes" }
    , { iataCode: "HU", name: "Hainan Airlines" }
    , { iataCode: "HA", name: "Hawaiian Airlines" }
    , { iataCode: "6E", name: "IndiGo Airlines" }
    , { iataCode: "JL", name: "Japan Airlines" }
    , { iataCode: "7C", name: "Jeju Air" }
    , { iataCode: "LS", name: "Jet2" }
    , { iataCode: "B6", name: "JetBlue Airways" }
    , { iataCode: "JA", name: "JetSMART" }
    , { iataCode: "HO", name: "Juneyao Airlines" }
    , { iataCode: "KQ", name: "Kenya Airways" }
    , { iataCode: "KL", name: "KLM Royal Dutch Airlines" }
    , { iataCode: "KE", name: "Korean Air" }
    , { iataCode: "MN", name: "Kulula.com" }
    , { iataCode: "LA", name: "LATAM Airlines" }
    , { iataCode: "JT", name: "Lion Air" }
    , { iataCode: "LO", name: "LOT Polish Airlines" }
    , { iataCode: "LH", name: "Lufthansa" }
    , { iataCode: "LN", name: "Libyan Airlines" }
    , { iataCode: "Z8", name: "Linea Aerea Amaszonas" }
    , { iataCode: "MH", name: "Malaysia Airlines" }
    , { iataCode: "N4", name: "Nordwind Airlines" }
    , { iataCode: "DY", name: "Norwegian Air Shuttle" }
    , { iataCode: "WY", name: "Oman Air" }
    , { iataCode: "PK", name: "Pakistan International Airlines" }
    , { iataCode: "PC", name: "Pegasus Airlines" }
    , { iataCode: "PR", name: "Philippine Airlines" }
    , { iataCode: "QF", name: "Qantas Group" }
    , { iataCode: "QR", name: "Qatar Airways" }
    , { iataCode: "YX", name: "Republic Airways" }
    , { iataCode: "AT", name: "Royal Air Maroc" }
    , { iataCode: "FR", name: "Ryanair" }
    , { iataCode: "S7", name: "S7 Airlines" }
    , { iataCode: "SK", name: "SAS" }
    , { iataCode: "9R", name: "Satena" }
    , { iataCode: "SV", name: "Saudia" }
    , { iataCode: "SC", name: "Shandong Airlines" }
    , { iataCode: "3U", name: "Sichuan Airlines" }
    , { iataCode: "SQ", name: "Singapore Airlines" }
    , { iataCode: "H2", name: "Sky Airline" }
    , { iataCode: "OO", name: "SkyWest Airlines" }
    , { iataCode: "SA", name: "South African Airways" }
    , { iataCode: "WN", name: "Southwest Airlines" }
    , { iataCode: "SG", name: "SpiceJet" }
    , { iataCode: "NK", name: "Spirit Airlines" }
    , { iataCode: "9S", name: "Spring Airlines" }
    , { iataCode: "UL", name: "SriLankan Airlines" }
    , { iataCode: "2I", name: "Star Peru" }
    , { iataCode: "SY", name: "Sun Country Airlines" }
    , { iataCode: "XQ", name: "SunExpress" }
    , { iataCode: "TP", name: "TAP Air Portugal" }
    , { iataCode: "FD", name: "Thai AirAsia" }
    , { iataCode: "TG", name: "Thai Airways" }
    , { iataCode: "BY", name: "TUI Airways" }
    , { iataCode: "TU", name: "Tunisair" }
    , { iataCode: "TK", name: "Turkish Airlines" }
    , { iataCode: "PS", name: "Ukraine International" }
    , { iataCode: "UA", name: "United Airlines" }
    , { iataCode: "U6", name: "Ural Airlines" }
    , { iataCode: "VJ", name: "VietJet Air" }
    , { iataCode: "VN", name: "Vietnam Airlines" }
    , { iataCode: "VS", name: "Virgin Atlantic Airways" }
    , { iataCode: "VA", name: "Virgin Australia" }
    , { iataCode: "VB", name: "VivaAerobus" }
    , { iataCode: "2Z", name: "VOEPASS Linhas Aereas" }
    , { iataCode: "Y4", name: "Volaris" }
    , { iataCode: "WS", name: "WestJet" }
    , { iataCode: "P5", name: "Wingo" }
    , { iataCode: "W6", name: "Wizz Air" }
    ]

module Fakerjs2.Locales.En.Airline.Airport (airport) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

airport =
  ( unsafeCoerce
      :: Array { iataCode :: String, name :: String }
      -> NonEmptyArray { iataCode :: NonEmptyString, name :: NonEmptyString }
  )
    [ { iataCode: "ADL", name: "Adelaide International Airport" }
    , { iataCode: "MAD", name: "Adolfo Suarez Madrid-Barajas Airport" }
    , { iataCode: "AEP", name: "Aeroparque Jorge Newbery Airport" }
    , { iataCode: "CWB", name: "Afonso Pena International Airport" }
    , { iataCode: "CLO", name: "Alfonso Bonilla Aragon International Airport" }
    , { iataCode: "AMS", name: "Amsterdam Airport Schiphol" }
    , { iataCode: "SCL", name: "Arturo Merino Benitez International Airport" }
    , { iataCode: "AKL", name: "Auckland International Airport" }
    , { iataCode: "PEK", name: "Beijing Capital International Airport" }
    , { iataCode: "BEL", name: "Belem Val de Cans International Airport" }
    , { iataCode: "CNF", name: "Belo Horizonte Tancredo Neves International Airport" }
    , { iataCode: "TXL", name: "Berlin-Tegel Airport" }
    , { iataCode: "ADD", name: "Bole International Airport" }
    , { iataCode: "BSB", name: "Brasilia-Presidente Juscelino Kubitschek International Airport" }
    , { iataCode: "BNE", name: "Brisbane International Airport" }
    , { iataCode: "BRU", name: "Brussels Airport" }
    , { iataCode: "CNS", name: "Cairns Airport" }
    , { iataCode: "CAI", name: "Cairo International Airport" }
    , { iataCode: "CBR", name: "Canberra Airport" }
    , { iataCode: "CPT", name: "Capetown International Airport" }
    , { iataCode: "CDG", name: "Charles de Gaulle International Airport" }
    , { iataCode: "CLT", name: "Charlotte Douglas International Airport" }
    , { iataCode: "CTU", name: "Chengdu Shuangliu International Airport" }
    , { iataCode: "BOM", name: "Chhatrapati Shivaji International Airport" }
    , { iataCode: "ORD", name: "Chicago O'Hare International Airport" }
    , { iataCode: "CKG", name: "Chongqing Jiangbei International Airport" }
    , { iataCode: "CHC", name: "Christchurch International Airport" }
    , { iataCode: "CPH", name: "Copenhagen Kastrup Airport" }
    , { iataCode: "DFW", name: "Dallas Fort Worth International Airport" }
    , { iataCode: "HNL", name: "Daniel K. Inouye International Airport" }
    , { iataCode: "DEN", name: "Denver International Airport" }
    , { iataCode: "DMK", name: "Don Mueang International Airport" }
    , { iataCode: "DXB", name: "Dubai International Airport" }
    , { iataCode: "DUB", name: "Dublin Airport" }
    , { iataCode: "DUS", name: "Dusseldorf Airport" }
    , { iataCode: "BOG", name: "El Dorado International Airport" }
    , { iataCode: "ATH", name: "Eleftherios Venizelos International Airport" }
    , { iataCode: "PPT", name: "Faa'a International Airport" }
    , { iataCode: "FLL", name: "Fort Lauderdale Hollywood International Airport" }
    , { iataCode: "FOR", name: "Fortaleza Pinto Martins International Airport" }
    , { iataCode: "FRA", name: "Frankfurt am Main Airport" }
    , { iataCode: "IAH", name: "George Bush Intercontinental Houston Airport" }
    , { iataCode: "OOL", name: "Gold Coast Airport" }
    , { iataCode: "GRU", name: "Guarulhos - Governador Andre Franco Montoro International Airport" }
    , { iataCode: "ATL", name: "Hartsfield-Jackson Atlanta International Airport" }
    , { iataCode: "HEL", name: "Helsinki Vantaa Airport" }
    , { iataCode: "HBA", name: "Hobart International Airport" }
    , { iataCode: "HKG", name: "Hong Kong International Airport" }
    , { iataCode: "ALG", name: "Houari Boumediene Airport" }
    , { iataCode: "HRG", name: "Hurgada International Airport" }
    , { iataCode: "ICN", name: "Incheon International Airport" }
    , { iataCode: "DEL", name: "Indira Gandhi International Airport" }
    , { iataCode: "IST", name: "Istanbul Airport" }
    , { iataCode: "POM", name: "Jacksons International Airport" }
    , { iataCode: "CJU", name: "Jeju International Airport" }
    , { iataCode: "JFK", name: "John F Kennedy International Airport" }
    , { iataCode: "LIM", name: "Jorge Chavez International Airport" }
    , { iataCode: "MDE", name: "Jose Maria Cordova International Airport" }
    , { iataCode: "BCN", name: "Josep Tarradellas Barcelona-El Prat Airport" }
    , { iataCode: "OGG", name: "Kahului Airport" }
    , { iataCode: "JED", name: "King Abdulaziz International Airport" }
    , { iataCode: "KUL", name: "Kuala Lumpur International Airport" }
    , { iataCode: "KMG", name: "Kunming Changshui International Airport" }
    , { iataCode: "NOU", name: "La Tontouta International Airport" }
    , { iataCode: "FCO", name: "Leonardo da Vinci-Fiumicino Airport" }
    , { iataCode: "LHR", name: "London Heathrow Airport" }
    , { iataCode: "LAX", name: "Los Angeles International Airport" }
    , { iataCode: "LAS", name: "McCarran International Airport" }
    , { iataCode: "MEL", name: "Melbourne International Airport" }
    , { iataCode: "MEX", name: "Mexico City International Airport" }
    , { iataCode: "MIA", name: "Miami International Airport" }
    , { iataCode: "EZE", name: "Ministro Pistarini International Airport" }
    , { iataCode: "MSP", name: "Minneapolis-St Paul International/Wold-Chamberlain Airport" }
    , { iataCode: "CMN", name: "Mohammed V International Airport" }
    , { iataCode: "DME", name: "Moscow Domodedovo Airport" }
    , { iataCode: "MUC", name: "Munich Airport" }
    , { iataCode: "LOS", name: "Murtala Muhammed International Airport" }
    , { iataCode: "NAN", name: "Nadi International Airport" }
    , { iataCode: "NBO", name: "Nairobi Jomo Kenyatta International Airport" }
    , { iataCode: "NRT", name: "Narita International Airport" }
    , { iataCode: "EWR", name: "Newark Liberty International Airport" }
    , { iataCode: "MNL", name: "Ninoy Aquino International Airport" }
    , { iataCode: "GEA", name: "Noumea Magenta Airport" }
    , { iataCode: "JNB", name: "O. R. Tambo International Airport" }
    , { iataCode: "MCO", name: "Orlando International Airport" }
    , { iataCode: "OSL", name: "Oslo Lufthavn" }
    , { iataCode: "PER", name: "Perth Airport" }
    , { iataCode: "PHX", name: "Phoenix Sky Harbor International Airport" }
    , { iataCode: "REC", name: "Recife Guararapes-Gilberto Freyre International Airport" }
    , { iataCode: "GIG", name: "Rio de Janeiro Galeao International Airport" }
    , { iataCode: "POA", name: "Salgado Filho International Airport" }
    , { iataCode: "SSA", name: "Salvador Deputado Luis Eduardo Magalhaes International Airport" }
    , { iataCode: "SFO", name: "San Francisco International Airport" }
    , { iataCode: "SDU", name: "Santos Dumont Airport" }
    , { iataCode: "CGH", name: "Sao Paulo-Congonhas Airport" }
    , { iataCode: "SEA", name: "Seattle Tacoma International Airport" }
    , { iataCode: "SHA", name: "Shanghai Hongqiao International Airport" }
    , { iataCode: "PVG", name: "Shanghai Pudong International Airport" }
    , { iataCode: "SZX", name: "Shenzhen Bao'an International Airport" }
    , { iataCode: "SVO", name: "Sheremetyevo International Airport" }
    , { iataCode: "SIN", name: "Singapore Changi Airport" }
    , { iataCode: "CGK", name: "Soekarno-Hatta International Airport" }
    , { iataCode: "ARN", name: "Stockholm-Arlanda Airport\"" }
    , { iataCode: "BKK", name: "Suvarnabhumi Airport" }
    , { iataCode: "SYD", name: "Sydney Kingsford Smith International Airport" }
    , { iataCode: "TPE", name: "Taiwan Taoyuan International Airport" }
    , { iataCode: "SGN", name: "Tan Son Nhat International Airport" }
    , { iataCode: "HND", name: "Tokyo Haneda International Airport" }
    , { iataCode: "YYZ", name: "Toronto Pearson International Airport" }
    , { iataCode: "TUN", name: "Tunis Carthage International Airport" }
    , { iataCode: "YVR", name: "Vancouver International Airport" }
    , { iataCode: "VIE", name: "Vienna International Airport" }
    , { iataCode: "VCP", name: "Viracopos International Airport" }
    , { iataCode: "VKO", name: "Vnukovo International Airport" }
    , { iataCode: "WLG", name: "Wellington International Airport" }
    , { iataCode: "XIY", name: "Xi'an Xianyang International Airport" }
    , { iataCode: "ZIA", name: "Zhukovsky International Airport" }
    , { iataCode: "ZRH", name: "Zurich Airport" }
    ]

module Fakerjs2.Locales.ZhCn.Airline.Airplane (airplane) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

airplane =
  ( unsafeCoerce
      :: Array { iataTypeCode :: String, name :: String }
      -> NonEmptyArray { iataTypeCode :: NonEmptyString, name :: NonEmptyString }
  )
    [ { iataTypeCode: "SSC", name: "航天/BAC协和式飞机" }
    , { iataTypeCode: "AB3", name: "空客A300" }
    , { iataTypeCode: "310", name: "空客A310" }
    , { iataTypeCode: "312", name: "空客A310-200" }
    , { iataTypeCode: "313", name: "空客A310-300" }
    , { iataTypeCode: "318", name: "空客A318" }
    , { iataTypeCode: "319", name: "空客A319" }
    , { iataTypeCode: "31N", name: "空客A319neo" }
    , { iataTypeCode: "320", name: "空客A320" }
    , { iataTypeCode: "32N", name: "空客A320neo" }
    , { iataTypeCode: "321", name: "空客A321" }
    , { iataTypeCode: "32Q", name: "空客A321neo" }
    , { iataTypeCode: "330", name: "空客A330" }
    , { iataTypeCode: "332", name: "空客A330-200" }
    , { iataTypeCode: "333", name: "空客A330-300" }
    , { iataTypeCode: "338", name: "空客A330-800neo" }
    , { iataTypeCode: "339", name: "空客A330-900neo" }
    , { iataTypeCode: "340", name: "空客A340" }
    , { iataTypeCode: "342", name: "空客A340-200" }
    , { iataTypeCode: "343", name: "空客A340-300" }
    , { iataTypeCode: "345", name: "空客A340-500" }
    , { iataTypeCode: "346", name: "空客A340-600" }
    , { iataTypeCode: "350", name: "空客A350" }
    , { iataTypeCode: "359", name: "空客A350-900" }
    , { iataTypeCode: "351", name: "空客A350-1000" }
    , { iataTypeCode: "380", name: "空客A380" }
    , { iataTypeCode: "388", name: "空客A380-800" }
    , { iataTypeCode: "ANF", name: "安东诺夫 安-12" }
    , { iataTypeCode: "AN4", name: "安东诺夫 安-24" }
    , { iataTypeCode: "A26", name: "安东诺夫 安-26" }
    , { iataTypeCode: "A28", name: "安东诺夫 安-28" }
    , { iataTypeCode: "A30", name: "安东诺夫 安-30" }
    , { iataTypeCode: "A32", name: "安东诺夫 安-32" }
    , { iataTypeCode: "AN7", name: "安东诺夫 安-72" }
    , { iataTypeCode: "A4F", name: "安东诺夫 安-124 Ruslan" }
    , { iataTypeCode: "A40", name: "安东诺夫 安-140" }
    , { iataTypeCode: "A81", name: "安东诺夫 安-148" }
    , { iataTypeCode: "A58", name: "安东诺夫 安-158" }
    , { iataTypeCode: "A5F", name: "安东诺夫 安-225 Mriya" }
    , { iataTypeCode: "703", name: "波音707" }
    , { iataTypeCode: "717", name: "波音717" }
    , { iataTypeCode: "B72", name: "波音720B" }
    , { iataTypeCode: "727", name: "波音727" }
    , { iataTypeCode: "721", name: "波音727-100" }
    , { iataTypeCode: "722", name: "波音727-200" }
    , { iataTypeCode: "7M7", name: "波音737 MAX 7" }
    , { iataTypeCode: "7M8", name: "波音737 MAX 8" }
    , { iataTypeCode: "7M9", name: "波音737 MAX 9" }
    , { iataTypeCode: "7MJ", name: "波音737 MAX 10" }
    , { iataTypeCode: "737", name: "波音737" }
    , { iataTypeCode: "731", name: "波音737-100" }
    , { iataTypeCode: "732", name: "波音737-200" }
    , { iataTypeCode: "733", name: "波音737-300" }
    , { iataTypeCode: "734", name: "波音737-400" }
    , { iataTypeCode: "735", name: "波音737-500" }
    , { iataTypeCode: "736", name: "波音737-600" }
    , { iataTypeCode: "73G", name: "波音737-700" }
    , { iataTypeCode: "738", name: "波音737-800" }
    , { iataTypeCode: "739", name: "波音737-900" }
    , { iataTypeCode: "747", name: "波音747" }
    , { iataTypeCode: "741", name: "波音747-100" }
    , { iataTypeCode: "742", name: "波音747-200" }
    , { iataTypeCode: "743", name: "波音747-300" }
    , { iataTypeCode: "744", name: "波音747-400" }
    , { iataTypeCode: "74J", name: "波音747-400D" }
    , { iataTypeCode: "748", name: "波音747-8" }
    , { iataTypeCode: "74L", name: "波音747SP" }
    , { iataTypeCode: "74R", name: "波音747SR" }
    , { iataTypeCode: "757", name: "波音757" }
    , { iataTypeCode: "752", name: "波音757-200" }
    , { iataTypeCode: "753", name: "波音757-300" }
    , { iataTypeCode: "767", name: "波音767" }
    , { iataTypeCode: "762", name: "波音767-200" }
    , { iataTypeCode: "763", name: "波音767-300" }
    , { iataTypeCode: "764", name: "波音767-400" }
    , { iataTypeCode: "777", name: "波音777" }
    , { iataTypeCode: "772", name: "波音777-200" }
    , { iataTypeCode: "77L", name: "波音777-200LR" }
    , { iataTypeCode: "773", name: "波音777-300" }
    , { iataTypeCode: "77W", name: "波音777-300ER" }
    , { iataTypeCode: "787", name: "波音787" }
    , { iataTypeCode: "788", name: "波音787-8" }
    , { iataTypeCode: "789", name: "波音787-9" }
    , { iataTypeCode: "781", name: "波音787-10" }
    , { iataTypeCode: "CCJ", name: "加拿大挑战者飞机" }
    , { iataTypeCode: "CL4", name: "加拿大CL-44" }
    , { iataTypeCode: "CR1", name: "加拿大支线喷气机100" }
    , { iataTypeCode: "CR2", name: "加拿大支线喷气机200" }
    , { iataTypeCode: "CR7", name: "加拿大支线喷气机700" }
    , { iataTypeCode: "CRA", name: "加拿大支线喷气机705" }
    , { iataTypeCode: "CR9", name: "加拿大支线喷气机900" }
    , { iataTypeCode: "CRK", name: "加拿大支线喷气机1000" }
    , { iataTypeCode: "DHP", name: "加拿大德哈维兰DHC-2 Beaver" }
    , { iataTypeCode: "DHR", name: "加拿大德哈维兰DHC-2 Turbo-Beaver" }
    , { iataTypeCode: "DHL", name: "加拿大德哈维兰DHC-3 Otter" }
    , { iataTypeCode: "DHC", name: "加拿大德哈维兰DHC-4 Caribou" }
    , { iataTypeCode: "DHT", name: "加拿大德哈维兰DHC-6 Twin Otter" }
    , { iataTypeCode: "DH7", name: "加拿大德哈维兰DHC-7 Dash 7" }
    , { iataTypeCode: "DH1", name: "加拿大德哈维兰DHC-8-100 Dash 8 / 8Q" }
    , { iataTypeCode: "DH2", name: "加拿大德哈维兰DHC-8-200 Dash 8 / 8Q" }
    , { iataTypeCode: "DH3", name: "加拿大德哈维兰DHC-8-300 Dash 8 / 8Q" }
    , { iataTypeCode: "DH4", name: "加拿大德哈维兰DHC-8-400 Dash 8Q" }
    , { iataTypeCode: "DHD", name: "德哈维兰DH.104 Dove" }
    , { iataTypeCode: "DHH", name: "德哈维兰DH.114 Heron" }
    , { iataTypeCode: "D3F", name: "道格拉斯DC-3" }
    , { iataTypeCode: "D6F", name: "道格拉斯DC-6" }
    , { iataTypeCode: "D8T", name: "道格拉斯DC-8-50" }
    , { iataTypeCode: "D8L", name: "道格拉斯DC-8-62" }
    , { iataTypeCode: "D8Q", name: "道格拉斯DC-8-72" }
    , { iataTypeCode: "D91", name: "道格拉斯DC-9-10" }
    , { iataTypeCode: "D92", name: "道格拉斯DC-9-20" }
    , { iataTypeCode: "D93", name: "道格拉斯DC-9-30" }
    , { iataTypeCode: "D94", name: "道格拉斯DC-9-40" }
    , { iataTypeCode: "D95", name: "道格拉斯DC-9-50" }
    , { iataTypeCode: "D10", name: "道格拉斯DC-10" }
    , { iataTypeCode: "D1X", name: "道格拉斯DC-10-10" }
    , { iataTypeCode: "D1Y", name: "道格拉斯DC-10-30" }
    , { iataTypeCode: "E70", name: "巴西工业航空公司170" }
    , { iataTypeCode: "E75", name: "巴西工业航空公司175" }
    , { iataTypeCode: "E90", name: "巴西工业航空公司190" }
    , { iataTypeCode: "E95", name: "巴西工业航空公司195" }
    , { iataTypeCode: "290", name: "巴西工业航空公司E190-E2" }
    , { iataTypeCode: "295", name: "巴西工业航空公司E195-E2" }
    , { iataTypeCode: "EMB", name: "巴西工业航空公司EMB.110 Bandeirante" }
    , { iataTypeCode: "EM2", name: "巴西工业航空公司EMB.120 Brasilia" }
    , { iataTypeCode: "ER3", name: "巴西工业航空公司Legacy 600" }
    , { iataTypeCode: "EP1", name: "巴西工业航空公司Phenom 100" }
    , { iataTypeCode: "EP3", name: "巴西工业航空公司Phenom 300" }
    , { iataTypeCode: "ER3", name: "巴西工业航空公司RJ135" }
    , { iataTypeCode: "ERD", name: "巴西工业航空公司RJ140" }
    , { iataTypeCode: "ER4", name: "巴西工业航空公司RJ145 Amazon" }
    , { iataTypeCode: "IL8", name: "伊留申IL18" }
    , { iataTypeCode: "IL6", name: "伊留申IL62" }
    , { iataTypeCode: "IL7", name: "伊留申IL76" }
    , { iataTypeCode: "ILW", name: "伊留申IL86" }
    , { iataTypeCode: "I93", name: "伊留申IL96-300" }
    , { iataTypeCode: "I14", name: "伊留申IL114" }
    , { iataTypeCode: "LOH", name: "洛克希德L-182 / 282 / 382 (L-100) Hercules" }
    , { iataTypeCode: "LOE", name: "洛克希德L-188 Electra" }
    , { iataTypeCode: "L10", name: "洛克希德L-1011 Tristar" }
    , { iataTypeCode: "L49", name: "洛克希德L-1049 Super Constellation" }
    , { iataTypeCode: "M11", name: "麦克唐纳道格拉斯MD11" }
    , { iataTypeCode: "M80", name: "麦克唐纳道格拉斯MD80" }
    , { iataTypeCode: "M81", name: "麦克唐纳道格拉斯MD81" }
    , { iataTypeCode: "M82", name: "麦克唐纳道格拉斯MD82" }
    , { iataTypeCode: "M83", name: "麦克唐纳道格拉斯MD83" }
    , { iataTypeCode: "M87", name: "麦克唐纳道格拉斯MD87" }
    , { iataTypeCode: "M88", name: "麦克唐纳道格拉斯MD88" }
    , { iataTypeCode: "M90", name: "麦克唐纳道格拉斯MD90" }
    , { iataTypeCode: "SU9", name: "苏霍伊超级喷气机100-95" }
    , { iataTypeCode: "TU3", name: "图波列夫Tu-134" }
    , { iataTypeCode: "TU5", name: "图波列夫Tu-154" }
    , { iataTypeCode: "T20", name: "图波列夫Tu-204" }
    , { iataTypeCode: "YK4", name: "雅科夫列夫Yak-40" }
    , { iataTypeCode: "YK2", name: "雅科夫列夫Yak-42" }
    ]

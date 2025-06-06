module Fakerjs2.Locales.ZhCn.Airline.Airport (airport) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

airport =
  ( unsafeCoerce
      :: Array { iataCode :: String, name :: String }
      -> NonEmptyArray { iataCode :: NonEmptyString, name :: NonEmptyString }
  )
    [ { iataCode: "ADL", name: "阿德莱德国际机场" }
    , { iataCode: "MAD", name: "阿道弗·苏亚雷斯马德里-巴拉哈斯机场" }
    , { iataCode: "AEP", name: "豪尔赫纽伯里机场机场" }
    , { iataCode: "CWB", name: "阿方索·佩纳国际机场" }
    , { iataCode: "CLO", name: "阿方索·博尼利亚·阿拉贡国际机场" }
    , { iataCode: "AMS", name: "阿姆斯特丹史基浦机场" }
    , { iataCode: "SCL", name: "阿图罗·梅里诺·贝尼特斯国际机场" }
    , { iataCode: "AKL", name: "奥克兰国际机场" }
    , { iataCode: "PEK", name: "北京首都国际机场" }
    , { iataCode: "BEL", name: "贝伦瓦德坎斯国际机场" }
    , { iataCode: "CNF", name: "贝洛奥里藏特坦克雷多·内维斯国际机场" }
    , { iataCode: "TXL", name: "柏林泰格尔机场" }
    , { iataCode: "ADD", name: "博乐国际机场" }
    , { iataCode: "BSB", name: "巴西利亚儒塞利诺·库比契克总统国际机场" }
    , { iataCode: "BNE", name: "布里斯班国际机场" }
    , { iataCode: "BRU", name: "布里斯班机场" }
    , { iataCode: "CNS", name: "凯恩斯机场" }
    , { iataCode: "CAI", name: "开罗国际机场" }
    , { iataCode: "CBR", name: "堪培拉机场" }
    , { iataCode: "CPT", name: "开普敦国际机场" }
    , { iataCode: "CDG", name: "戴高乐国际机场" }
    , { iataCode: "CLT", name: "夏洛特道格拉斯国际机场" }
    , { iataCode: "CTU", name: "成都双流国际机场" }
    , { iataCode: "BOM", name: "贾特拉帕蒂·希瓦吉国际机场" }
    , { iataCode: "ORD", name: "芝加哥奥黑尔国际机场" }
    , { iataCode: "CKG", name: "重庆江北国际机场" }
    , { iataCode: "CHC", name: "基督城国际机场" }
    , { iataCode: "CPH", name: "哥本哈根卡斯特鲁普机场" }
    , { iataCode: "DFW", name: "达拉斯沃思堡国际机场" }
    , { iataCode: "HNL", name: "丹尼尔·井上国际机场" }
    , { iataCode: "DEN", name: "丹佛国际机场" }
    , { iataCode: "DMK", name: "廊曼国际机场" }
    , { iataCode: "DXB", name: "迪拜国际机场" }
    , { iataCode: "DUB", name: "都柏林机场" }
    , { iataCode: "DUS", name: "杜塞尔多夫机场" }
    , { iataCode: "BOG", name: "埃尔多拉多国际机场" }
    , { iataCode: "ATH", name: "埃莱夫塞里奥斯·韦尼泽洛斯国际机场" }
    , { iataCode: "PPT", name: "法阿国际机场" }
    , { iataCode: "FLL", name: "劳德代尔堡好莱坞国际机场" }
    , { iataCode: "FOR", name: "福塔莱萨平托马丁斯国际机场" }
    , { iataCode: "FRA", name: "美因河畔法兰克福机场" }
    , { iataCode: "IAH", name: "休斯顿机场乔治·布什洲际酒店" }
    , { iataCode: "OOL", name: "黄金海岸机场" }
    , { iataCode: "GRU", name: "瓜鲁柳斯 - 安德烈·佛朗哥·蒙托罗州长国际机场" }
    , { iataCode: "ATL", name: "哈兹菲尔德-杰克逊亚特兰大国际机场" }
    , { iataCode: "HEL", name: "赫尔辛基万塔机场" }
    , { iataCode: "HBA", name: "霍巴特国际机场" }
    , { iataCode: "HKG", name: "香港国际机场" }
    , { iataCode: "ALG", name: "胡阿里·布迈丁机场" }
    , { iataCode: "HRG", name: "赫尔格达国际机场" }
    , { iataCode: "ICN", name: "仁川国际机场" }
    , { iataCode: "DEL", name: "英迪拉·甘地国际机场" }
    , { iataCode: "IST", name: "伊斯坦布尔机场" }
    , { iataCode: "POM", name: "杰克逊国际机场" }
    , { iataCode: "CJU", name: "济州国际机场" }
    , { iataCode: "JFK", name: "约翰肯尼迪国际机场" }
    , { iataCode: "LIM", name: "豪尔赫·查韦斯国际机场" }
    , { iataCode: "MDE", name: "何塞·玛丽亚·科尔多瓦国际机场" }
    , { iataCode: "BCN", name: "何塞普·塔拉德拉斯巴塞罗那埃尔普拉特机场" }
    , { iataCode: "OGG", name: "卡胡卢伊机场" }
    , { iataCode: "JED", name: "阿卜杜勒阿齐兹国王国际机场" }
    , { iataCode: "KUL", name: "吉隆坡国际机场" }
    , { iataCode: "KMG", name: "昆明长水国际机场" }
    , { iataCode: "NOU", name: "拉通图塔国际机场" }
    , { iataCode: "FCO", name: "莱昂纳多达芬奇-菲乌米奇诺机场" }
    , { iataCode: "LHR", name: "伦敦希思罗机场" }
    , { iataCode: "LAX", name: "洛杉矶国际机场" }
    , { iataCode: "LAS", name: "麦卡伦国际机场" }
    , { iataCode: "MEL", name: "墨尔本国际机场" }
    , { iataCode: "MEX", name: "墨西哥城国际机场" }
    , { iataCode: "MIA", name: "迈阿密国际机场" }
    , { iataCode: "EZE", name: "皮斯塔里尼部长国际机场" }
    , { iataCode: "MSP", name: "明尼阿波利斯-圣保罗国际机场/沃尔德-张伯伦机场" }
    , { iataCode: "CMN", name: "穆罕默德五世国际机场" }
    , { iataCode: "DME", name: "莫斯科多莫杰多沃机场" }
    , { iataCode: "MUC", name: "慕尼黑机场" }
    , { iataCode: "LOS", name: "穆尔塔拉穆罕默德国际机场" }
    , { iataCode: "NAN", name: "楠迪国际机场" }
    , { iataCode: "NBO", name: "内罗毕乔莫肯雅塔国际机场" }
    , { iataCode: "NRT", name: "成田国际机场" }
    , { iataCode: "EWR", name: "纽瓦克自由国际机场" }
    , { iataCode: "MNL", name: "尼诺·阿基诺国际机场" }
    , { iataCode: "GEA", name: "努美阿洋红色机场" }
    , { iataCode: "JNB", name: "奥利弗·R·坦博国际机场" }
    , { iataCode: "MCO", name: "奥兰多国际机场" }
    , { iataCode: "OSL", name: "奥斯陆卢夫塔文机场" }
    , { iataCode: "PER", name: "珀斯机场" }
    , { iataCode: "PHX", name: "凤凰城天港国际机场" }
    , { iataCode: "REC", name: "累西腓瓜拉拉佩斯-吉尔伯托弗雷尔国际机场" }
    , { iataCode: "GIG", name: "里约热内卢加利昂国际机场" }
    , { iataCode: "POA", name: "萨尔加多菲略国际机场" }
    , { iataCode: "SSA", name: "萨尔瓦多·德普塔多·路易斯·爱德华多·马加良斯国际机场" }
    , { iataCode: "SFO", name: "旧金山国际机场" }
    , { iataCode: "SDU", name: "桑托斯·杜蒙特机场" }
    , { iataCode: "CGH", name: "圣保罗孔戈尼亚斯机场" }
    , { iataCode: "SEA", name: "西雅图塔科马国际机场" }
    , { iataCode: "SHA", name: "上海虹桥国际机场" }
    , { iataCode: "PVG", name: "上海浦东国际机场" }
    , { iataCode: "SZX", name: "深圳宝安国际机场" }
    , { iataCode: "SVO", name: "谢列梅捷沃国际机场" }
    , { iataCode: "SIN", name: "新加坡樟宜机场" }
    , { iataCode: "CGK", name: "苏加诺-哈达国际机场" }
    , { iataCode: "ARN", name: "斯德哥尔摩-阿兰达机场" }
    , { iataCode: "BKK", name: "素万那普机场" }
    , { iataCode: "SYD", name: "悉尼金斯福德史密斯国际机场" }
    , { iataCode: "TPE", name: "台湾桃园国际机场" }
    , { iataCode: "SGN", name: "新山一国际机场" }
    , { iataCode: "HND", name: "东京羽田国际机场" }
    , { iataCode: "YYZ", name: "多伦多皮尔逊国际机场" }
    , { iataCode: "TUN", name: "突尼斯迦太基国际机场" }
    , { iataCode: "YVR", name: "温哥华国际机场" }
    , { iataCode: "VIE", name: "维也纳国际机场" }
    , { iataCode: "VCP", name: "维拉科波斯国际机场" }
    , { iataCode: "VKO", name: "伏努科沃国际机场" }
    , { iataCode: "WLG", name: "惠灵顿国际机场" }
    , { iataCode: "XIY", name: "西安咸阳国际机场" }
    , { iataCode: "ZIA", name: "茹科夫斯基国际机场" }
    , { iataCode: "ZRH", name: "苏黎世机场" }
    ]

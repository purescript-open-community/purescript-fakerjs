module Fakerjs2.Locales.ZhCn.Airline.Airline (airline) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

airline =
  ( unsafeCoerce
      :: Array { iataCode :: String, name :: String }
      -> NonEmptyArray { iataCode :: NonEmptyString, name :: NonEmptyString }
  )
    [ { iataCode: "A3", name: "爱琴海航空公司" }
    , { iataCode: "SU", name: "俄罗斯航空公司" }
    , { iataCode: "AR", name: "阿根廷航空公司" }
    , { iataCode: "AM", name: "墨西哥国际航空公司" }
    , { iataCode: "AH", name: "阿尔及利亚航空公司" }
    , { iataCode: "G9", name: "阿拉伯航空公司" }
    , { iataCode: "AC", name: "加拿大航空公司" }
    , { iataCode: "CA", name: "中国国际航空公司" }
    , { iataCode: "UX", name: "西班牙欧洲航空公司" }
    , { iataCode: "AF", name: "法航荷航集团" }
    , { iataCode: "AI", name: "印度国际航空公司" }
    , { iataCode: "MK", name: "毛里求斯航空公司" }
    , { iataCode: "NZ", name: "新西兰航空公司" }
    , { iataCode: "PX", name: "新几内亚航空公司" }
    , { iataCode: "VT", name: "塔希提航空公司" }
    , { iataCode: "TN", name: "大溪地航空公司" }
    , { iataCode: "TS", name: "越洋航空公司" }
    , { iataCode: "D7", name: "亚洲航空X公司" }
    , { iataCode: "AK", name: "亚洲航空公司" }
    , { iataCode: "SB", name: "喀里多尼亚国际航空公司" }
    , { iataCode: "AS", name: "阿拉斯加航空公司" }
    , { iataCode: "AZ", name: "意大利航空公司" }
    , { iataCode: "NH", name: "全日空公司" }
    , { iataCode: "G4", name: "忠实航空公司" }
    , { iataCode: "AA", name: "美国航空公司" }
    , { iataCode: "OZ", name: "韩亚航空公司" }
    , { iataCode: "AV", name: "哥伦比亚航空公司" }
    , { iataCode: "AD", name: "巴西蔚蓝航空公司" }
    , { iataCode: "ZF", name: "蓝色航空公司" }
    , { iataCode: "JD", name: "北京首都航空公司" }
    , { iataCode: "OB", name: "玻利维亚航空公司" }
    , { iataCode: "BA", name: "英国航空公司" }
    , { iataCode: "CX", name: "国泰航空公司" }
    , { iataCode: "5J", name: "宿雾太平洋航空公司" }
    , { iataCode: "CI", name: "中华航空公司" }
    , { iataCode: "MU", name: "中国东方航空公司" }
    , { iataCode: "CZ", name: "中国南方航空公司" }
    , { iataCode: "DE", name: "神鹰航空公司" }
    , { iataCode: "CM", name: "巴拿马航空公司" }
    , { iataCode: "DL", name: "达美航空公司" }
    , { iataCode: "VE", name: "易飞航空公司" }
    , { iataCode: "U2", name: "易捷航空公司" }
    , { iataCode: "MS", name: "埃及航空公司" }
    , { iataCode: "LY", name: "以色列艾拉航空公司" }
    , { iataCode: "EK", name: "阿联酋航空公司" }
    , { iataCode: "ET", name: "埃塞俄比亚航空公司" }
    , { iataCode: "EY", name: "阿提哈德航空公司" }
    , { iataCode: "BR", name: "长荣航空公司" }
    , { iataCode: "FJ", name: "斐济航空公司" }
    , { iataCode: "AY", name: "芬兰航空公司" }
    , { iataCode: "FZ", name: "迪拜航空公司公司" }
    , { iataCode: "F9", name: "边疆航空公司" }
    , { iataCode: "GA", name: "印度尼西亚鹰航空公司" }
    , { iataCode: "G3", name: "高尔航空公司" }
    , { iataCode: "HU", name: "海南航空公司" }
    , { iataCode: "HA", name: "夏威夷航空公司" }
    , { iataCode: "6E", name: "靛蓝航空公司" }
    , { iataCode: "JL", name: "日本航空公司" }
    , { iataCode: "7C", name: "济州航空公司" }
    , { iataCode: "LS", name: "捷特二航空公司" }
    , { iataCode: "B6", name: "捷蓝航空公司" }
    , { iataCode: "HO", name: "上海吉祥航空公司" }
    , { iataCode: "KQ", name: "肯尼亚航空公司" }
    , { iataCode: "KE", name: "大韩航空公司" }
    , { iataCode: "MN", name: "酷路拉航空航空公司" }
    , { iataCode: "LA", name: "南美航空公司" }
    , { iataCode: "JT", name: "狮子航空公司" }
    , { iataCode: "LO", name: "波兰航空公司" }
    , { iataCode: "LH", name: "德国汉莎航空公司" }
    , { iataCode: "LN", name: "利比亚阿拉伯航空公司" }
    , { iataCode: "Z8", name: "玻利维亚亚马孙航空公司" }
    , { iataCode: "MH", name: "马来西亚航空公司" }
    , { iataCode: "N4", name: "北风航空公司" }
    , { iataCode: "DY", name: "挪威穿梭航空公司" }
    , { iataCode: "WY", name: "阿曼航空公司" }
    , { iataCode: "PK", name: "巴基斯坦国际航空公司" }
    , { iataCode: "PC", name: "飞马航空公司" }
    , { iataCode: "PR", name: "菲律宾航空公司" }
    , { iataCode: "QF", name: "澳洲航空公司" }
    , { iataCode: "QR", name: "卡塔尔航空公司" }
    , { iataCode: "YX", name: "共和航空公司" }
    , { iataCode: "AT", name: "摩洛哥皇家航空公司" }
    , { iataCode: "FR", name: "瑞安航空公司" }
    , { iataCode: "S7", name: "西伯利亚航空公司" }
    , { iataCode: "SK", name: "北欧航空公司" }
    , { iataCode: "SV", name: "沙特阿拉伯航空公司" }
    , { iataCode: "SC", name: "山东航空公司" }
    , { iataCode: "3U", name: "四川航空公司" }
    , { iataCode: "SQ", name: "新加坡航空公司" }
    , { iataCode: "H2", name: "天空航空公司" }
    , { iataCode: "OO", name: "天西航空公司" }
    , { iataCode: "SA", name: "南非航空公司" }
    , { iataCode: "WN", name: "西南航空公司" }
    , { iataCode: "SG", name: "香料航空公司" }
    , { iataCode: "NK", name: "精神航空公司" }
    , { iataCode: "9S", name: "春秋航空公司" }
    , { iataCode: "UL", name: "斯里兰卡航空公司" }
    , { iataCode: "2I", name: "秘鲁星航空公司" }
    , { iataCode: "SY", name: "太阳城航空公司" }
    , { iataCode: "XQ", name: "阳光快运航空" }
    , { iataCode: "TP", name: "葡萄牙航空公司" }
    , { iataCode: "FD", name: "泰国亚洲航空" }
    , { iataCode: "TG", name: "泰国航空公司" }
    , { iataCode: "BY", name: "途易飞航空" }
    , { iataCode: "TU", name: "突尼斯航空公司" }
    , { iataCode: "TK", name: "土耳其航空公司" }
    , { iataCode: "PS", name: "乌克兰国际航空公司" }
    , { iataCode: "UA", name: "美国联合航空公司" }
    , { iataCode: "U6", name: "乌拉航空公司" }
    , { iataCode: "VJ", name: "越南越捷航空公司" }
    , { iataCode: "VN", name: "越南航空公司" }
    , { iataCode: "VS", name: "维珍航空公司" }
    , { iataCode: "VA", name: "维珍蓝航空公司" }
    , { iataCode: "VB", name: "万岁空中巴士航空公司" }
    , { iataCode: "2Z", name: "巴西航空公司" }
    , { iataCode: "Y4", name: "沃拉里斯航空公司" }
    , { iataCode: "WS", name: "西捷航空公司" }
    , { iataCode: "P5", name: "温戈航空公司" }
    , { iataCode: "W6", name: "维兹航空公司" }
    ]

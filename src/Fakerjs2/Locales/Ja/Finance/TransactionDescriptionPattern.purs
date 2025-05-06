module Fakerjs2.Locales.Ja.Finance.TransactionDescriptionPattern (transaction_description_pattern) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

transaction_description_pattern = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "{{company.name}}での取引により、{{finance.currencyCode}} {{finance.amount}}がカ\x0030fcド末尾****{{string.numeric(4)}}を使用して口座末尾***{{string.numeric(4)}}に請求されました。"
  , "{{finance.currencyCode}} {{finance.amount}}の{{finance.transactionType}}が{{company.name}}で処理されました。カ\x0030fcド末尾****{{string.numeric(4)}}、口座末尾***{{string.numeric(4)}}が使用されています。"
  , "{{finance.currencyCode}} {{finance.amount}}の支払いが{{company.name}}で処理されました。この取引にはカ\x0030fcド末尾****{{string.numeric(4)}}と口座末尾***{{string.numeric(4)}}がリンクされています。"
  , "{{finance.transactionType}}が{{company.name}}で確認されました。金額は{{finance.currencyCode}} {{finance.amount}}で、カ\x0030fcド末尾****{{string.numeric(4)}}と口座末尾***{{string.numeric(4)}}が関連付けられています。"
  , "あなたの取引が完了しました。{{company.name}}で{{finance.currencyCode}} {{finance.amount}}の{{finance.transactionType}}が行われ、カ\x0030fcド末尾****{{string.numeric(4)}}と口座末尾***{{string.numeric(4)}}が利用されました。"
  , "カ\x0030fcド末尾****{{string.numeric(4)}}を使用して、{{company.name}}にて{{finance.currencyCode}} {{finance.amount}}の{{finance.transactionType}}が行われました。口座末尾***{{string.numeric(4)}}が利用されています。"
  , "カ\x0030fcド末尾****{{string.numeric(4)}}を使用して、{{finance.currencyCode}} {{finance.amount}}の{{finance.transactionType}}が{{company.name}}で実施されました。口座末尾***{{string.numeric(4)}}が利用されています。"
  , "取引が成功しました。{{company.name}}で{{finance.currencyCode}} {{finance.amount}}の{{finance.transactionType}}が実施され、カ\x0030fcド末尾****{{string.numeric(4)}}と口座末尾***{{string.numeric(4)}}が使用されています。"
  , "取引通知: {{finance.currencyCode}} {{finance.amount}}の{{finance.transactionType}}が発生しました。{{company.name}}でカ\x0030fcド末尾****{{string.numeric(4)}}と口座末尾***{{string.numeric(4)}}が使用されています。"
  , "金額{{finance.currencyCode}} {{finance.amount}}の{{finance.transactionType}}が{{company.name}}で行われました。カ\x0030fcド末尾****{{string.numeric(4)}}と口座末尾***{{string.numeric(4)}}が使用されています。"
  ]

# NSCalendar

## 概要
NSCalendarは、カレンダーの情報を提供するクラスです。

## 関連クラス
NSTimeZone、NSLocale、Date、DateFormatter、DateComponent

## 主要プロパティ

|プロパティ名|説明|サンプル|
|---|---|---|
|timeZone | TimeZoneを取得する | calendar.timeZone |
|locale | Localeを取得する | calendar.locale |
|monthSymbols | 月の配列を取得する | calendar.monthSymbols |
|weekdaySymbols | 週の配列を取得する | calendar.monthSymbols |


## 主要メソッド
|メソッド名|説明|サンプル|
|---|---|---|
|component | 日付を返す | calendar.component(.day, from: date) |
|range | カレンダーの特定の範囲の情報を返す | calendar.range(of: .day, in: .month, for: date)!.count |
|dateComponents | タイムゾーンに合わせた日付を返す | calendar.dateComponents(Set\<Calendar.Component\>([.year,.month,.day]),from: date) |
| isDateInToday | 今日か? | calendar.isDateInToday(date) |
| isDateInTomorrow | 明日か? | calendar.isDateInTomorrow(date) |
| isDateInWeekend | 週末か? | calendar.isDateInWeekend(date) |
| isDateInYesterday | 昨日か? | calendar.isDateInYesterday(date) |
| isDate | 同日か? | calendar.isDate(date1, inSameDayAs: date2) |

## フレームワーク
Foundation.framework

## サポートOSバージョン
iOS8.0以上

## 開発環境
|category | Version| 
|---|---|
| Swift | 3.0.2 |
| XCode | 8.2 |
| iOS | 10.0〜 |

## 参考
https://developer.apple.com/reference/foundation/nscalendar

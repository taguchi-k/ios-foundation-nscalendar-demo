//: Playground - noun: a place where people can play

import UIKit

private let tokyoTimeZone = "Asia/Tokyo"
private let jpLocal = "ja"
private var calendar = Calendar.current

//MARK:-option

/// TimeZoneを設定する
private func setupTimeZone() {
    calendar.timeZone = TimeZone(identifier: tokyoTimeZone)!
}

/// Localeの設定
private func setupLocal() {
    calendar.locale = Locale(identifier: jpLocal)
}

/// TimeZoneのIDを取得する
private func currentTimeZone() -> String {
    return calendar.timeZone.identifier
}

/// 年を取得する
private func dateYear(date: Date) -> Int {
    return calendar.component(.year, from: date)
}

/// 月を取得する
private func dateMonth(date: Date) -> Int {
    return calendar.component(.month, from: date)
}

/// 日を取得する
private func dateDay(date: Date) -> Int {
    return calendar.component(.day, from: date)
}

/// 時間を取得する
private func dateHour(date: Date) -> Int {
    return calendar.component(.hour, from: date)
}

/// 分を取得する
private func dateMinute(date: Date) -> Int {
    return calendar.component(.minute, from: date)
}

/// 秒を取得する
private func dateSecond(date: Date) -> Int {
    return calendar.component(.second, from: date)
}

/// 曜日を取得する
private func dateWeekDay(date: Date) -> Int {
    return calendar.component(.weekday, from: date)
}

/// 年月日、時分秒を取得する（まとめて設定できる）
private func dateSettings(date: Date) -> DateComponents {
    return calendar.dateComponents(Set<Calendar.Component>([.year,.month,.day,.hour,.minute,.second]),
                                   from: date)
}

/// 日付の差を取得する
private func diffDate(srcDate: Date, distDate: Date) -> Int {
    return calendar.dateComponents([.day], from: srcDate, to: distDate).day!
}

//MAKR:- For-Debug
private func renderDate() {

    //Do Something
}

/// ["1月", "2月", "3月", "4月", "5月", "6月", "7月", "8月", "9月", "10月", "11月", "12月"]
private func renderMonthSymbols() {
    print(calendar.monthSymbols)
}

/// ["日曜日", "月曜日", "火曜日", "水曜日", "木曜日", "金曜日", "土曜日"]
private func renderWeekdaySymbols() {
    print(calendar.weekdaySymbols)
}

/// ["日", "月", "火", "水", "木", "金", "土"]
private func renderShortWeekdaySymbols() {
    print(calendar.shortWeekdaySymbols)
}

/// 該当の日付に更新する
private func updateDate(date: Date) -> DateComponents {

    var compontent = dateSettings(date: date)
    compontent.year = 2016
    compontent.month = 10
    compontent.day = 3
    return compontent
}

/// 月の初日に更新する
private func updateFirstDate(date: Date) -> DateComponents {

    var compontent = dateSettings(date: date)
    compontent.day = 1
    return compontent
}

/// 日付を表示する
private func renderDate(date: Date) {

    let component = dateSettings(date: date)
    print("\(component.year!)/\(component.month!)/\(component.day!) \(component.hour!):\(component.minute!):\(component.second!)")
}

/// DateComponentsをDateに変換する
private func compontentToDate(compontent: DateComponents) -> Date{
    return calendar.date(from: compontent)!
}

/// 該当月は、何週間あるか？
private func weekOfMonth(date: Date) -> Int {

    let compontent = updateFirstDate(date: date)
    let firstDateOfMonth = compontentToDate(compontent: compontent)
    return calendar.range(of: .weekOfMonth, in: .month, for: firstDateOfMonth)!.count
}

/// 該当月の最終日は何日か？
private func endOfMonth(date: Date) -> Int {
    return calendar.range(of: .day, in: .month, for: date)!.count
}

// MARK: - 動かしてみる
let date = Date()

setupLocal()
setupTimeZone()

_ = currentTimeZone()
_ = dateYear(date: date)
_ = dateMonth(date: date)
_ = dateDay(date: date)
_ = dateHour(date: date)
_ = dateMinute(date: date)
_ = dateSecond(date: date)
_ = dateWeekDay(date: date)
let dateComponents = dateSettings(date: date)
_ = diffDate(srcDate: date, distDate: date + TimeInterval(60 * 60 * 24 * 10))

renderMonthSymbols()
renderWeekdaySymbols()
renderShortWeekdaySymbols()
_ = updateDate(date: date)
_ = updateFirstDate(date: date)
_ = renderDate(date: date)
_ = compontentToDate(compontent: dateComponents)
_ = weekOfMonth(date: date)
_ = endOfMonth(date: date)

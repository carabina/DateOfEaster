//
//  Date+DateOfEaster.swift
//  DateOfEaster
//
//  Created by Michał Nierebiński on 15.05.2017.
//

import Foundation

extension Date {
    public static func easternEasterDate(year: Int) -> Date? {
        return easternEasterDate(for: year)
    }

    public static func westernEasterDate(year: Int) -> Date? {
        return westernEaster(for: year)
    }
}

// MARK: - Private functions
fileprivate extension Date {
    static func westernEaster(for year: Int) -> Date? {

        guard year >= 1583 else { return nil }

        // Anonymous Gregorian Algorithm
        // https://en.wikipedia.org/wiki/Computus#Anonymous_Gregorian_algorithm

        /// Calculate Western Easter Date Components using Gregorian Algorithm
        let westernEasterComponents: DateComponents = {
            let a = year % 19
            let b = year / 100
            let c = year % 100
            let d = b / 4
            let e = b % 4
            let f = (b + 8) / 25
            let g = (b - f + 1) / 3
            let h = ((19 * a) + b - d - g + 15) % 30
            let i = c / 4
            let k = c % 4
            let l = (32 + (2 * e) + (2 * i) - h - k) % 7
            let m = (a + (11 * h) + (22 * l)) / 451
            let n = h + l - (7 * m) + 114
            let month = n / 31
            let day = (n % 31) + 1

            var dateComponents = DateComponents()
            dateComponents.year = year
            dateComponents.month = month
            dateComponents.day = day
            dateComponents.hour = 9
            dateComponents.timeZone = TimeZone(identifier: "GMT")

            return dateComponents
        }()

        return gregorianDate(from: westernEasterComponents)
    }

    static func easternEasterDate(for year: Int) -> Date? {
        guard (1900...2099).contains(year) else { return nil }

        /// Calculate Eastern Easter Date Components using Meeus Algorithm
        let easternEasterComponents: DateComponents = {
            let a = year % 4
            let b = year % 7
            let c = year % 19
            let d = (19 * c + 15) % 30
            let e = (2 * a + 4 * b - d + 34) % 7
            let f = d + e + 114
            let month = f / 31
            let day = (f % 31) + 1

            var dateComponents = DateComponents()
            dateComponents.year = year
            dateComponents.month = month
            dateComponents.day = day + 13
            dateComponents.hour = 9
            dateComponents.timeZone = TimeZone(identifier: "GMT")

            return dateComponents
        }()

        return gregorianDate(from: easternEasterComponents)
    }

    static func gregorianDate(from components: DateComponents) -> Date? {
        return Calendar(identifier: .gregorian).date(from: components)
    }
}

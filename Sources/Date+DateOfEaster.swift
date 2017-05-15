//
//  Date+DateOfEaster.swift
//  DateOfEaster
//
//  Created by Michał Nierebiński on 15.05.2017.
//

import Foundation

extension Date {
    public static func easternOrthodoxEasterDate(year: Int) -> Date? {
        return self.easternEasterDate(for: year)
    }
}

// MARK: - Private functions
fileprivate extension Date {

    static func easternEasterDate(for year: Int) -> Date? {
        guard (1900...2099).contains(year) else { return nil }

        /// Calculate Date Components using Meeus Algorithm
        let dateComponents: DateComponents = {
            let a = year % 4
            let b = year % 7
            let c = year % 19
            let d = (19 * c + 15) % 30
            let e = (2 * a + 4 * b - d + 34) % 7
            let f = d + e + 114
            let month = f / 31
            let day = (f % 31) + 1

            var components = DateComponents()
            components.year = year
            components.month = month
            components.day = day + 13
            components.hour = 12
            components.timeZone = TimeZone(identifier: "GMT")

            return components
        }()

        let calendar = Calendar(identifier: .gregorian)

        return calendar.date(from: components)
    }
}

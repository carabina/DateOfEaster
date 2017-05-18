//
//  DateOfEasterTests.swift
//  DateOfEasterTests
//
//  Created by Michał Nierebiński on 17.05.2017.
//
//

import XCTest
import DateOfEaster

class DateOfEasterTests: XCTestCase {

    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

    func testReturnProperWesternEasterDates() {
        let easter2017 = Date.westernEasterDate(year: 2017)
        let expected2017easterDate = Date(timeIntervalSince1970: 1492333200.0)

        XCTAssertNotNil(easter2017)
        XCTAssertEqual(easter2017, expected2017easterDate)

        let easter1983 = Date.westernEasterDate(year: 1983)
        let expected1983EasterDate = Date(timeIntervalSince1970: 418208400.0)

        XCTAssertNotNil(easter1983)
        XCTAssertEqual(easter1983, expected1983EasterDate)

        let easter1770 = Date.westernEasterDate(year: 1770)
        let expected1770EasterDate = Date(timeIntervalSince1970: -6302329200.0)

        XCTAssertNotNil(easter1770)
        XCTAssertEqual(easter1770, expected1770EasterDate)
    }

    func testReturnProperEasternEasterDates() {
        let easter2016 = Date.easternEasterDate(year: 2016)
        let expected2016easterDate = Date(timeIntervalSince1970: 1462093200.0)

        XCTAssertNotNil(easter2016)
        XCTAssertEqual(easter2016, expected2016easterDate)

        let easter1983 = Date.easternEasterDate(year: 1983)
        let expected1983EasterDate = Date(timeIntervalSince1970: 421232400.0)

        XCTAssertNotNil(easter1983)
        XCTAssertEqual(easter1983, expected1983EasterDate)
    }

    func testWesternEasterDateBeforeBorderDateIsNil() {
        let easter1500 = Date.westernEasterDate(year: 1500)
        XCTAssertNil(easter1500)
    }

    func testEasternEasterDateBeforeBorderDateIsNil() {
        let easter1899 = Date.easternEasterDate(year: 1899)
        XCTAssertNil(easter1899)
    }

    func testEasternEasterDateLaterThanBorderDateIsNil() {
        let easter2100 = Date.easternEasterDate(year: 2100)
        XCTAssertNil(easter2100)
    }

    func testEqualEasterDates() {
        let westernEaster2017 = Date.westernEasterDate(year: 2017)
        let easternEaster2017 = Date.westernEasterDate(year: 2017)

        XCTAssertNotNil(easternEaster2017)
        XCTAssertEqual(easternEaster2017, westernEaster2017)
    }
}

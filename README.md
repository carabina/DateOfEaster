# DateOfEaster
[![Swift 3.0](https://img.shields.io/badge/Swift-3.1-yellow.svg?style=flat-square)](https://developer.apple.com/swift/) [![Build Status](https://img.shields.io/travis/Loyolny/DateOfEaster/master.svg?style=flat-square)](https://travis-ci.org/Loyolny/DateOfEaster) [![Code coverage status](https://img.shields.io/codecov/c/github/Loyolny/DateOfEaster.svg?style=flat-square)](http://codecov.io/github/Loyolny/DateOfEaster) [![Code climate](https://img.shields.io/codeclimate/github/Loyolny/DateOfEaster.svg?style=flat-square)](https://codeclimate.com/github/Loyolny/DateOfEaster) [![CocoaPods Compatible](https://img.shields.io/cocoapods/v/DateOfEaster.svg?style=flat-square)](https://img.shields.io/cocoapods/v/DateOfEaster) [![Platform](https://img.shields.io/cocoapods/p/DateOfEaster.svg?style=flat-square)](http://cocoadocs.org/docsets/DateOfEaster)

**Supported Swift version:** Swift 3.1

**Supported platforms:** iOS 9.0+

# Introduction
**DateOfEaster** is an extension for the `Date` class, used for calcutation of Easter date, both western _(used by Roman Catholic Church and many protestant and evangelical churches)_ and eastern _(used by most of Eastern Orthodox Churches and Ancient Churches of the East)_.

### A bit of history
Sometimes I need to find a certain Christian festive day's date. A long ago I created a Ruby gem for this: **[when_easter](https://github.com/Loyolny/when_easter)**. Now I thought to create something like this in Swift.

## Installation
DateOfEaster is compatibile with [CocoaPods](http://cocoapods.org/). Just add this to
your Podfile:

```ruby
pod 'DateOfEaster'
```

You can also build DateOfEaster as a framework and drag the created _.framework_ file into your Xcode project.

## Examples
Find a western Easter date:
```Swift
let easter2015 = Date.westernEasterDate(year: 2015)
```

Find an eastern Easter date:
```Swift
let easter1983 = Date.easternEasterDate(year: 1983)
```
### Caveats
_Date.easternEasterDate_ and _Date.westernEasterDate_ return `Date` optional. Both eastern and western date calcutation are subject to certain limitations:
* Western date has to be year 1583 or later. There was no Gregorian calendar before.
* Eastern date has to be between year 1900 and 2099 due to changes between Julian and Gregorian calendars in year 2100.
Otherwise both functions will return *nil*.

## Attributions

Both Easter date calcutation algorithms were taken from Wikipedia:
* [Gregorian Algorithm](https://en.wikipedia.org/wiki/Computus#Anonymous_Gregorian_algorithm)
* [Meeus's Julian Algorithm](https://en.wikipedia.org/wiki/Computus#Meeus.27_Julian_algorithm)

## Tests
DateOfEaster includes a small suite of tests for all functions of the library.

## Playground
A playground is included in the project for you to learn how to use this library.

## License

This project is distributed under a MIT license. See the LICENSE file
for details.

import DateOfEaster

let easter1983east = Date.easternEasterDate(year: 1983)
let easter1983west = Date.westernEasterDate(year: 1983)

if let unwrappedWestern = easter1983west,
    let unwrappedEastern = easter1983east {
    let difference = unwrappedEastern.timeIntervalSince(unwrappedWestern)
}

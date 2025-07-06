import UIKit


/*
 - Your input is this:
    let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]
 - Your job is to:
    - Filter out any numbers that are even
    - Sort the array in ascending order
    - Map them to strings in the format "7 is a lucky number"
    - Print the resulting array, one line per item
 */

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

func getEvenSortedFormattedStrings(filterFn: ([Int]) -> [Int], sortFn: (Int, Int) -> Bool, mapFn: (Int) -> String) -> [String] {
    return filterFn(luckyNumbers)
        .sorted(by: sortFn)
        .map(mapFn)
}

let result = getEvenSortedFormattedStrings { (numbers) in
        numbers.filter { !$0.isMultiple(of: 2) }
    }
    sortFn: { $0 < $1 }
    mapFn: { "\($0) is a lucky number" }

for line in result {
    print(line)
}

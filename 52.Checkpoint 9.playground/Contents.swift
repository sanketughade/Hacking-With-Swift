import UIKit

/*
 PROBLEM STATEMENT:
 -Write a function that accepts an optional array of integers, and returns one of those integers randomly.
 -If the array is missing or empty, return a new random number in the range 1 through 100.
 -Write your function in a single line of code.
 */

func getRandomInt(numbers: [Int]?) -> Int {
    return numbers?.randomElement() ?? Int.random(in: 1...100)
}

print(getRandomInt(numbers: [10, 20, 30]))
print(getRandomInt(numbers: []))
print(getRandomInt(numbers: nil))

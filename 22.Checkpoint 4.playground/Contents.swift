import UIKit

/*
 Write a function that accepts an integer from 1 through 10,000, and returns the integer square root of that number. That sounds easy, but there are some catches:

 You can’t use Swift’s built-in sqrt()
 function or similar – you need to find the square root yourself.

 If the number is less than 1 or greater than 10,000 you should throw an “out of bounds” error.

 You should only consider integer square roots – don’t worry about the square root of 3 being 1.732, for example.

 If you can’t find the square root, throw a “no root” error
 */

enum UserInput: Error {
    case outOfBound, noSquareRoot
}

func getSquareRoot(of number: Int) throws -> String {
    var result = 1
    
    if number < 1 || number > 10_000 {
        throw UserInput.outOfBound
    }
    
    for root in 1...100 {
        result = root * root
        if result == number {
            return "The square root of \(number) is \(root)!"
        }
    }
    
    throw UserInput.noSquareRoot
}

do {
    try getSquareRoot(of: 36)
} catch UserInput.outOfBound {
    print("Please use a number between 1 and 10,000")
} catch UserInput.noSquareRoot {
    print("Square root not found")
}

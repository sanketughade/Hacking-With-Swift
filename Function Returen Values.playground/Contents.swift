import UIKit

//Functions also return some data back.
//Functions perform some computation internally and can return the result of the computation.

func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)

/*
 Do two strings contain the same letters, regardless of their order?
 This function should:
 - Accept two string parameters
 - Return true if their letters are the same
 */


//If a function has a return type and just one line of code that will be returning the value then the return keyword can be skipped as in the below example.

func areLettersIdentical(string1: String, string2: String) -> Bool {
    string1.sorted() == string2.sorted()
}

let areTwoStringSameResult = areLettersIdentical(string1: "abc", string2: "cba")
print(areTwoStringSameResult)

func pythagoras(a: Double, b: Double) -> Double {
    sqrt(a * a + b * b)
}

let c = pythagoras(a: 3, b: 4)
print(c)

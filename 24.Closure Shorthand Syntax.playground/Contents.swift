import UIKit

//We can skip defining the types of closure parameters and return type if its already fixed.
//For example, sorted function accepts a closure such that it accepts two elements whose type is that of an array element and whose return type is Bool.
//So, these can be skipped as shown in the below example.

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]

let captainFirstTeam = team.sorted(by: {a, b in
    if a == "Suzanne" {
        return true
    } else if b == "Suzanne" {
        return false
    }
    
    return a < b
})

print(captainFirstTeam)

//Further we can make the above syntax more shorthand by removing the round(()) braces as below.
//This is only possible if the function accepting the closure has the closure parameter as its last parameter.
//The sorted function just accepts one parameter so it is by default the last parameter.

let captainFirstTeam1 = team.sorted{a, b in
    if a == "Suzanne" {
        return true
    } else if b == "Suzanne" {
        return false
    }
    
    return a < b
}

//Further we can make the closure syntax more shorthand by removig the parameter names of the closure.
//As Swift provides by default $0, $1 as parameter names if not provided as shown in the below example.
//This approach should be used if the closure body is short and the number of parameters are upto two else it can make closure hard to read.

let reverseTeam = team.sorted {
    return $0 > $1
}

print(reverseTeam)

//Further it can be made more shorthand and on one line as below.

let reverseTeam1 = team.sorted { $0 > $1 }

//More examples

let tOnly = team.filter { $0.hasPrefix("T") }
print(tOnly)

let uppercaseTeam = team.map { $0.uppercased() }
print(uppercaseTeam)

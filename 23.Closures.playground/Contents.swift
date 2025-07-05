import UIKit

//We can store a function inside a variable and call it using the variable name.
//When a function is stored or passed around to call in some later point of time then it is known as closure.

func greetUser() {
    print("Hi there!")
}

greetUser()
var greetCopy = greetUser
greetCopy()

//We can also store an anonymous function inside a variable and call it as shown in the below example.

let sayHello = {
    print("Hi there!")
}

sayHello()

//If we want the closure to accept some parameters and return a value, we can do it as shown in the below example.

let sayHelloToPerson = { (name: String) -> String in
    "Hi \(name)!"
}

sayHelloToPerson("Sanket")

//We can explicitly define the type to the variable to the closure is defined based on the closure parameters and its return type as shown in the below example.
//In this case, as you can see when we call the closure we don't need to use the external parameter names at the call site.

func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}

let data: (Int) -> String = getUserData
let user = data(1989)
print(user)

//sorted function also accepts a closure where we can pass our custom sorting logic as shown in the below example.

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)

func captainFirstSorted(name1: String, name2: String) -> Bool {
    print("Comparing: \(name1) vs \(name2)")
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    
    return name1 < name2
}

//let captainFirstTeam = team.sorted(by: captainFirstSorted)
//print(captainFirstTeam)

//We can also pass a function in form of a closure directly to the sorted function as shown in the belw example.

let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
    print("Comparing: \(name1) vs \(name2)")
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    
    return name1 < name2
})

print(captainFirstTeam)

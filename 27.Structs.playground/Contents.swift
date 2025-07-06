import UIKit

//We can define our own types similar to Int, String, etc using struct as shown in the below example
//Each instance of struct will have its own data as in the below example red and wings will have their own title, artist and year

struct Album {
    let title: String
    let artist: String
    let year: Int
    
    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}

let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
let wings = Album(title: "Wings", artist: "BTS", year: 2016)

red.printSummary()
wings.printSummary()

//Constants and variables inside structs are called as properties
//Functions inside structs are called as methods
//In structs, Swift does not allow a method to change the value of its properties unless the method is marked as mutating as shown in the below example
//vacationRemaining property is bein updated by takeVacation method so it needs to be marked as mutating

struct Employee {
    let name: String
    var vacationRemaining: Int
    
    mutating func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I'm going on vacation!")
            print("Days remaining: \(vacationRemaining)")
        } else {
            print("Oops! There aren't enough days remaining.")
        }
    }
}

var archer = Employee(name: "Sterling Archer", vacationRemaining: 14)
archer.takeVacation(days: 5)
print(archer.vacationRemaining)

//If a method inside a struct is modifying its property and the method is marked as mutating then the instance on which the method is being called needs to be a variable and not a constant
//For example, the below commented code wouldn't work because archer is a constant

//let archer1 = Employee(name: "Sterling Archer", vacationRemaining: 14)
//archer1.takeVacation(days: 5)
//print(archer1.vacationRemaining)

//We can also provide initial value to the properties of struct
//If there is an initial value provided to the struct's property then that property can be skipped in the initializer
//As in the below example the name property has an initial value of "Anonymous"
//So, it can be skipped in the initializer

struct Employee1 {
    let name: String = "Anonymous"
    var vacationRemaining: Int
    
    mutating func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I'm going on vacation!")
            print("Days remaining: \(vacationRemaining)")
        } else {
            print("Oops! There aren't enough days remaining.")
        }
    }
}

var archer2 = Employee1(vacationRemaining: 14)
archer2.takeVacation(days: 5)
print(archer2.vacationRemaining)

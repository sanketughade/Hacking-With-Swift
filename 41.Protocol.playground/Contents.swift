import UIKit

/*
 In Swift, a protocol is like a blueprint for methods, properties, and other requirements that a class, struct, or enum must follow.
 It doesn't provide the implementation - just the rules.
 
 Why are Protocols Ncessary and Useful?
 1.Abstraction
 Protocols help you hide implementation details and just define the expected behavior.
 
 2.Multiple Conformance
 Unlike classes(which support only single inheritance), structs and classes can conform to multiple protocols.
 
 3.Testability & Mocking
 Protocols make it easy to mock dependencies during unit testing.
 
 4.Extensibility with Protocol Extensions
 You can give default behavior via protocol extensions.
 
 Real-World Analogy
 Think of a protocol like a job contract:
    "As long as you do these things, I don't care who or what you are"
 */

/*
 As shown in the below example, protocol Vehicle has two methods, these two methods must be implemented by the structs or classes who conform to this protocol.
 If the struct or class conforming to this protocol doesn't implement the required methods then Swift won't build the code.
 The commute methods accepts any object for vehicle but the condition is the object must be an instance of struct or class that conforms to the Vehicle protocol.
 A struct or a class can also conform to multiple protocols at once, like below the Car struct conforms to CanBeElectric protocol
 */

protocol Vehicle {
    var name: String { get }
    var currentPassengers: Int { get set }
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

protocol CanBeElectric {
    
}

struct Car: Vehicle, CanBeElectric {
    let name = "Car"
    var currentPassengers = 1
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }
    
    func travel(distance: Int) {
        print("I'm driving \(distance)km")
    }
    
    func openSunroof() {
        print("It's a nice day!")
    }
}

struct Bicycle: Vehicle {
    let name = "Bicycle"
    var currentPassengers = 1
    func estimateTime(for distance: Int) -> Int {
        distance/10
    }
    
    func travel(distance: Int) {
        print("I'm cycling \(distance)km")
    }
}

func commute(distance: Int, using vehicle: Vehicle) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("That's too slow! I'll try a different vehicle.")
    } else {
        vehicle.travel(distance: distance)
    }
}

func getTravelEstimates(using vehicles: [Vehicle], distance: Int) {
    for vehicle in vehicles {
        let estimate = vehicle.estimateTime(for: distance)
        print("\(vehicle.name): \(estimate) hours to travel \(distance)km")
    }
}

//As we can see below, the commute function also accepts the Car's instance for Vehicle type because the Car struct conforms to the Vehicle protocol
let car = Car()
commute(distance: 100, using: car)

//Also below we can see the commute function also accepts the Bicycle's instance for Vehicle type because the Bicycle struct conforms to the Vehicle protocol
let bike = Bicycle()
commute(distance: 50, using: bike)

getTravelEstimates(using: [car, bike], distance: 150)

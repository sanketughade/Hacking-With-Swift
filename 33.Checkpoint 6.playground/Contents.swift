import UIKit

struct Car {
    let model: String
    let numberOfSeats: Int
    private(set) var currentGear: Int = 0 {
        willSet {
            print("Changing from gear \(currentGear) to \(newValue)")
        }
        didSet {
            print("Now in gear \(currentGear)")
        }
    }
    
    mutating func increaseGear(by: Int) {
        if currentGear + by > 10 {
            print("The car doesn't have that may  gears")
        } else {
            currentGear += by
        }
        print("\(model) current gear is \(currentGear)")
    }
    
    mutating func decreaseGear(by: Int) {
        if currentGear - by < 0 {
            print("Can't go below 0")
        } else {
            currentGear -= by
        }
        print("\(model) current gear is \(currentGear)")
    }
    
    init(model: String, numberOfSeats: Int, currentGear: Int) {
        self.model = model
        self.numberOfSeats = numberOfSeats
        if currentGear < 0 || currentGear > 10 {
            print("You cannot set gear more than 10 or less than 0. Gear set to 0.")
            self.currentGear = 0
        } else {
            self.currentGear = currentGear
        }
    }
}

var car = Car(model: "Nexon", numberOfSeats: 4, currentGear: 0)
car.increaseGear(by: 1)
car.decreaseGear(by: 1)
car.decreaseGear(by: 3)
car.increaseGear(by: 4)

import UIKit

//If a class inherits some other class and has its won initializer then it needs to call its parent class's initializer after seeting up all its properties(i.e at the end of its init method)
//If child class doesn't call its parent class initializer then swift will fail to compile the code, below is the example

class Vehicle {
    let isElectric: Bool
    
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible: Bool
    
    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}

let teslaX = Car(isElectric: true, isConvertible: false)

//If the child class doesn't have an initializer but the parent class has one then while creating child class's instance the parent's init method will be called as shown in the below commented example
//class Car: Vehicle {
//    let isConvertible = false
//}

//let teslaX = Car(isElectric: true) //Here, directly the parent class's init method will be called


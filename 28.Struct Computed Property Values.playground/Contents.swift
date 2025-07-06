import UIKit

//Structs can have properties whose value is being computed at the run time as shown in the below example

struct Employee {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    var vacationRemaining: Int {
        vacationAllocated - vacationTaken
    }
}

var archer = Employee(name: "Sterling Archer", vacationAllocated: 14)
archer.vacationTaken += 4
print(archer.vacationRemaining)
archer.vacationTaken += 4
print(archer.vacationRemaining)

//In the above example we cannot set the value to vacationRemaining property we can only get it
//To both set and get the value of vacationRemaining property we can use the approach shown in the below example
//The newValue is the new value set to the the vacationAllocated property
//The newvalue variable is not defined by us instead it is the internal Swift variable

struct Employee1 {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken
        }
        
        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
}

var archer1 = Employee1(name: "Sterling Archer", vacationAllocated: 14)
archer1.vacationTaken += 4
print(archer1.vacationRemaining)

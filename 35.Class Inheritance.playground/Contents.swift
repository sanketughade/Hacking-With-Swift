import UIKit

/*
 - We can make one class inherit from other class.
 - When a class inherits other class it gets all the properties and methods of its parent class and further it can add it own properties and methods.
 - As shown in the below example, Developer and Manager class inherit the Employee class so the hours property and printSummary method of Employee class is available in Developer and Manager class.
 - If a method is present in parent class and child class wants its won version of the method instead of using that from the parent class then the child class can override the method using the override keyword.
 - As in the below example, Employee class has printSummary method and the Developer class also has its own version of print summary created using the override keyword.
 - If the function in the child class has the same name as in the parent class but accepts different parameters or has a difeerent return type then in that case there is no need to use override keyword.
 - Swift will decide at runtime which method needs to be called based on the parameters passed and the return type.
 - If we don't want the class be inherited further we can use final keyword as done for Developer and Manager class in the below example.
 - Class declared as final can inherit other classes but the class itself cannot be inherited further.
 */

class Employee {
    let hours: Int
    
    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummary() {
        print("I work \(hours) hours a day.")
    }
}

final class Developer: Employee {
    func work() {
        print("I'm writing code for \(hours) hours.")
    }
    
    override func printSummary() {
        print("I'm a developer who will sometimes work \(hours) hours a day, but other times will spend hours arguing about whether code should be indented using tabs or spaces.")
    }
}

final class Manager: Employee {
    func work() {
        print("I'm going to meetings for \(hours) hours.")
    }
}

let robert = Developer(hours: 8)
let joseph = Manager(hours: 10)
robert.work()
joseph.work()

let novall = Developer(hours: 8)
novall.printSummary()

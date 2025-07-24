import UIKit

/*
 We can also add extensions to the protocol
 As in the below example, arrays, sets, etc conform to Collection protocol
 We can add an extension to the Collection protocol as shown below
 Using !array.isEmpty is a bit difficult to read, so, we can add a isNotEmpty property to the Collection protocol using extension as shown in the below example
 */

extension Collection {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}

let guests = ["Mario", "Luigi", "Peach"]

if guests.isNotEmpty {
    print("Guest count: \(guests.count)")
}

/*
 We can also add a default behavior to the methods in the protocol
 Anyone who conforms to this protocol doesn't necessarily need to define this method on conforming to the protocol
 We can provide default behavior to the method inside the protocol using extension as shown in the below example
 */

protocol Person {
    var name: String { get }
    func sayHello()
}

extension Person {
    func sayHello() {
        print("Hi, I'm \(name)")
    }
}

/*
 As seen below, the Employee struct doesn't define the sayHello method even though it conforms to the Person protocol
 This is due to the extension of Person provides a default defination for the sayHello method
 */

struct Employee: Person {
    let name: String
}

let taylor = Employee(name: "Taylor Swift")
taylor.sayHello()

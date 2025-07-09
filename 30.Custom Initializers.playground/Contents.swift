import UIKit

//Swift provides initializers by default which takes care of initializing all the struct's properties
//When we create an instance of a struct we pass the values of all the properties which triggers the default initializer as shown in the below example

struct Player {
    let name: String
    let number: Int
}

let player = Player(name: "Megan R", number: 15)

//We can also have our own custom initializers as shown in the below example
//Inside custom initializers we need to make sure that all the struct's properties are initialized before the init call finishes the execution
//Inside init, we cannot call any other function unless and until all the struct's properties are initialized

struct Player1 {
    let name: String
    let number: Int
    
    init(name: String, number: Int) {
        self.name = name
        //someFunction() //This is not allowed as the number is ye to be initialized with a value
        self.number = number
    }
}

let player1 = Player1(name: "Megan R", number: 15)

//It is not necessary that the initializer should accept all the struct's properties inside parameters as shown in the below example
//Here, number is not accepted as a parameter inside initializer
//But it is necessary that all the struct's properties have a value assigned before the init execution completes

struct Player2 {
    let name: String
    let number: Int
    
    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}

let player2 = Player2(name: "Megan R")
print(player2.number)

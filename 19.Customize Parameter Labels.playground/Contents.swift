import UIKit

//Normally we define and call the function as below.

func sayHello(name: String) {
    print("Hello \(name)")
}

sayHello(name: "Sanket")

//If we want to skip the parameter name at the function's call site we can add an underscore(_) before the parameter name as shown in the below example.

func isUppercase(_ string: String) {
    string == string.uppercased()
}

let string = "HELLO, WORLD"
let result = isUppercase(string)

//We can have external and internal parameter names for a function for better clearity as shown in the below example.

func printTimesTable(for number: Int) { //Here, for is an external parameter name and number is an internal parameter name.
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTable(for: 5) //External parameter name is used at the function's call site.

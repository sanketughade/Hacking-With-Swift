import UIKit

/*
 An Optional in Swift is a variable that can either contain a value or no value(nil).
 Why Do Optionals Exist?
 To safely handle the absence of a value.
 Other languages might crash if you try to use a variable that's null. Swift uses Optional to force you to safely deal with the possibility of nil.
 */

/*
 In the below example, we have a dictionary whose keys and values are both strings
 Now the dictionary can have a key "Peach" or it cannot have which makes it an optional
 So, the constant peachOpposite becomes an optional
 */

let opposites = ["Mario": "Wario", "Luigi": "Waluigi"]
let peachOpposite = opposites["Peach"]

/*
 Swift provides a IF LET syntax where we can check if the the value is not nil and then execute the IF block
 Also, optionally we can add a ELSE block which would execute if the value is nil
 In the below example, the IF block would get executed because the opposites dictionary has a key "Mario"
 The value of the "Mario" key is unwrapped and stored in the marioOpposite constant whose scope is limited to the IF block
 */

if let marioOpposite = opposites["Mario"] {
    print("Mario's opposite is \(marioOpposite)")
}

//In the below example code, the ELSE block would get executed as username is nil

var username: String? = nil

if let unwrappedName = username {
    print("We got a user: \(unwrappedName)")
} else {
    print("The optional was empty.")
}

/*
 In the below code the square function accepts a non-optional Int and we have a number that is an optional
 Before passing this number to the square function we need to make sure that its unwrapped and it definetly has a value
 So, we unwrap it using IF LET syntax
 Here, we can use the same variable name of the optional that we are unwrapping i.e number
 A new constant with a number as its name will be created which would hold the unwrapped value of number
 The scope of this newly created constant is only limited to the IF block
 */

func square(number: Int) -> Int {
    number * number
}

var number: Int? = nil

if let number = number {
    print(square(number: number))
}

import UIKit

//Type Inference: When we assign a value to a constant/variable at the time of declaration, Swift decides the type of variable based on its value.
//In the below example the constant name holds a string, so Swift will automatically "infer" the type of the constant to string and the constant name of type string.
let name = "Sanket"

//Type annotations is when we explicitly assign the type to the constant/variable.
//In the below example we explicity assign type as Int to the constant age.
let age: Int = 21

//In the below case, if you want the constant score to be of type Double and if you just assign 0 to the constant score, Swift will consider it as Int, hence type annotation would be useful here
let score: Double = 0

//Type annotations is also useful when you want to assign value to a constant/variable at later point in time after its declaration
let username: String
//lots of complex logic
username = "sanket"
//lots of more complex logic
print(username)

//NOTE: In the above example, we can declare a constant without any value at the time of declaration and assign the value later, but value can be assigned only once, meaning, the below won't work.
//let username: String
//username = "sanket"
//username = "sanket96"
//print(username)


import UIKit

//We can use tuples to return multiple values from a function as shown in the below example.

func getUser() -> (firstName: String, lastName: String) {
    return (firstName: "Taylor", lastName: "Swift")
}

let user = getUser()
print("Name: \(user.firstName) \(user.lastName)")

/*
 How does a tuple differ from a dictionary?
 - Swift can't know ahead of time if dictionary keys are present.
 - When you access tuple values, Swift knows it will bethere.
 - We access values using user.firstName, not a string.
 - Dictionary might contain hundreds of other values.
 */

//When a return type of a function is a tuple there is no need to mention the key names in the returned tuple as shown in the below example.

func getUser1() -> (firstName: String, lastName: String) {
    return ("Taylor", "Swift")
}

//We can even skip the key names in the return type as shown in the below example.
//In this case we use 0, 1, etc to access values on a tuple.

func getUser2() -> (String, String) {
    return ("Taylor", "Swift")
}

let user2 = getUser2()

print("Name: \(user2.0) \(user2.1)") //user2.3 will not be valid as tuple only returns two values in this case.

//Even when key names are present we can still use 0, 1, etc to access the tuple values as shown in the below example.

func getUser3() -> (firstName: String, lastName: String) {
    return ("Taylor", "Swift")
}

let user3 = getUser3()
print("Name: \(user3.0) \(user3.1)")

//We can also destructure a tuple and store the values inside it into individual variables as shown in the below example.

func getUser4() -> (firstName: String, lastName: String) {
    return (firstName: "Taylor", lastName: "Swift")
}

let (firstName, lastName) = getUser4()

print("Name: \(firstName) \(lastName)")

//If we don't want a particular value from a tuple, we can ignore it using an underscore(_) as shown in the below example.

func getUser5() -> (firstName: String, lastName: String) {
    return (firstName: "Taylor", lastName: "Swift")
}

let (firstName1, _) = getUser5()
print("Name: \(firstName1)")

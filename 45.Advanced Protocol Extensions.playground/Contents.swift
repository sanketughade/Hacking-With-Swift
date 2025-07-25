import UIKit

/*
 Int, Double, etc conform to the Numeric protocol
 So, we can add a extension method named squared as shown in the below example
 Now, the squared method can return any type based on which data type its being called
 So, the return type of Squared is Self with capital "S"
 self with small "s" refers to the current object
 Self with capital "S" refers to the type(class/struct/enum) that conforms to a protocol or is being extended
 */

extension Numeric {
    func squared() -> Self {
        self * self
    }
}

let wholeNumber = 5
print(wholeNumber.squared())

/*
 Equatable protcol allows you to use == and != on your custom types
 Comparable protocol allows you to use <, >, <=, >=, and also helps in sorting arrays.
 Comparable inherits from Equatable. So if your type is Comparable, you must also be Equatable
 */

/*
 As shown in the below example we can compare two instances(user1 and user2) of a custom type using Equatable
 We can also compare two instances(user1 and user2) of a custom type whether they are <, >, <=, >= using Comparable
 Below example shows the use of Equatable and Comparable
 */

struct User: Equatable, Comparable {
    let name: String
}

func <(lhs: User, rhs: User) -> Bool {
    lhs.name < rhs.name
}

let user1 = User(name: "Link")
let user2 = User(name: "Zelda")
//Below == comparison would print false because user1.name and user2.name are not equal
print(user1 == user2)
print(user1 != user2)
print(user1 < user2)
print(user1 <= user2)
print(user1 > user2)
print(user1 >= user2)

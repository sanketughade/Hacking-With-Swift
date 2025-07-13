import UIKit

//In case of classes, all copies of a class instance point to the same piece of data
//This means, the change in one class instance will result in change in all other instance copies as shown in the below example
//When username property on user2 is changed, it will result in change in user1's username property as well

class User {
    var username = "Anonymous"
}

var user1 = User()
var user2 = user1
user2.username = "Taylor"
print(user1.username)
print(user2.username)

//If we don't want the above metioned behaviour then we would need to make deep copy by copying each property as shown in the below example

class User2 {
    var username = "Anonymous"
    
    func copy() -> User2 {
        let user2 = User2()
        user2.username = self.username
        return user2
    }
}

var user3 = User2()
var user4 = user3.copy()
user4.username = "Taylor"
print(user3.username)
print(user4.username)

//Class instances are reference types but struct instances are value type
//i.e is change in one struct's instances would not result in change in all its instance copies as shown in the below example

struct User3 {
    var username = "Anonymous"
}

var user5 = User3()
var user6 = user5
user6.username = "Taylor"
print(user5.username)
print(user6.username)

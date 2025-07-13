import UIKit

/*
 - You don't use func with deinitializers.
 - Deinitializers can never take parameters or return data.
 - Deinitializers run when the last copy of a class instance is destroyed.
 - We never call deinitializers directly.
 - Structs don't have deinitializers.
 */

//Below is an example of using deinitializers
//Objects get destroyed when the scope context in which they were created finish the execution
//As in the below example, the object instance is created inside a for loop
//So, when the for loop finishes the execution the object gets destroyed and thats when the deinitializer gets called

class User {
    let id: Int
    
    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }
    
    deinit {
        print("User \(id): I'm dead!")
    }
}

//for i in 1...3 {
//    let user = User(id: i)
//    print("User \(user.id): I'm in control!")
//}

//In the below example the object instances are stored inside an array
//So, when all instances inside an array are removed then only the deinitializer will run

var users = [User]()

for i in 1...3 {
    let user = User(id: i)
    print("User \(user.id): I'm in control!")
    users.append(user)
}

print("Loop is finished!")
users.removeAll()
print("Array is clear!")

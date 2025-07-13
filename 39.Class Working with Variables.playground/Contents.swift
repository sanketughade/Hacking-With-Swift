import UIKit

/*
 There can be below four possible combinations:
 - class instance is constant and class property is constant - In this case niether the class instance not the class property can be changed
 - class instance is constant and class property is variable - In this case class instance cannot be assigned a new value but its property value can be changed
 - class instance is variable and class property is constant - In this case the class instance can be assigned a new value but the class's property value cannot be changed
 - class instance is variable and class property is variable - In this case the class instance can be assigned a new value as well as class property can be assigned a new value
 
 In case of struct:
 - If a struct is a constant and struct property is a variable - In this case the struct's property cannot be changed as the sturct's instanc itself is a constant
 - this is because struct contains the value in itself and class just points the value
 
 */

class User {
    var name = "Paul"
}

let user = User()
user.name = "Taylor"
print(user.name)

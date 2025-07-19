import UIKit

/*
 In Swift y sometimes see a function declared like:
 
 func getRandomNumber() -> some Equatable { ... }
 
 That some Equatable is an opaque return type.
 It means:
 "I promise I'm returg oe concrete tythat conforms to Equatable, but I'm not going to tell you exactly which tyom outside"
 
 The compiler knows the realype, and every call to that function always returns the same hidden concrete type, but callers only see  as "something that Equatable."
 
 Here, Equatable is a protocol to which evey data type Int, Double, Bool, etc conform to
 */

/*
 In the below example, you can see that both getRandomNumber() and getRandomBool() conform return some Equatable and internally return Int and Bool.
 Swift compiler already knows that getRandomNumber() would return Int and getRandomBool() would return a Bool by looking at the return statement.
 If in anytime in future you want the getRandomNumber() to return a Double then you just need to change the return statement without changing the returnType and also without making any changes at the consumption point
 */

func getRandomNumber() -> some Equatable {
    Int.random(in: 1...6)
}

func getRandomBool() -> some Equatable {
    Bool.random()
}

print(getRandomNumber() == getRandomNumber())

//If you look at the type of randomNumber it will be some Equatable instead of Int
let randomNumber = getRandomNumber()

/*
 Below there is one more example of Opaque Type
 Here, you can see weave a custom Protocol named Shape which has one function called area
 Now, the Circle and Square structs conform to the Shape protocol and randomShape() has an opaque return type and returns an instance a Circle or Square
 */

protocol Shape {
    func area() -> Double
}

struct Circle: Shape {
    var radius: Double
    func area() -> Double { .pi * radius * radius }
}

struct Square: Shape {
    var side: Double
    func area() -> Double { side * side }
}

// API surface
func randomShape() -> some Shape {
    Circle(radius: 5)
}

let shape = randomShape()
print(shape.area())

/*
 What is difference between,
 func randomShape() -> some Shape
 func randomShape() -> Shape
 
 func randomShape() -> Shape
 - This returns a protocol type(also called an existential type).
    You're saying:
    "I will return any type that conforms to Shape, and the exact type doesn't matter to e caller"
 
 Pros:
 - Can return different types that conform to the protocol (e.g., Circle or Square).
 - Useful for polymorphism when you want flexibility.

 Cons:
 - Type information is lost — you can only use what’s defined in the protocol.
 - Slightly less performant because it uses dynamic dispatch (like calling via a reference).
 
 func randomShape() -> some Shape
 - This returns an opaque type.
 You're saying:
    "I will return a specific type that conforms to Shape, but I'm hiding what that type is from the caller."
    (e.g., Always returning a Circle, but the caller just knows it conforms to Shape)
 
 Pros:
 - Keeps return type abstract but still allows the compiler to preserve type information internally.
 - Allows static dispatch (faster and more optimized).

 Safer because the type is known at compile time (just hidden from the outside).

 Cons:
 - Can only return one specific type consistently.
 - Can’t return Circle and Square randomly — must always return the same type.
 
 Analogy: Box of Fruit
 🍎 -> Shape
 You give someone a box labeled "Fruit".
 Sometimes it's an apple, sometimes it's a banana.
 The receiver doesn’t know which — they just know it’s some fruit and will treat it as such.

 🍌 -> some Shape
 You give someone a sealed box and say, “Trust me, there’s always a banana in here.”
 They don’t know it’s a banana, but you guarantee it’s the same thing every time.
 The compiler knows what it is and optimizes accordingly, but the caller can only use it as a fruit.
 */

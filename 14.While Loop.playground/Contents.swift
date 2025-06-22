import UIKit

//While loop executes the loop body until some condition is true.
//Once the condition becomes false then the loop ends.

//Lets say we want to count down numbers from 10 to 1.
//We can use a countdown variable to execute a loop body until its value is greater than 10 as shown in the below example.

var countdown = 10

while countdown > 0 {
    print("\(countdown)")
    countdown -= 1
}

print("Blast off!")

//In Swift, to generate a random number between a given range we use random function as shown in the below example.

var roll = 0

while roll != 20 {
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll)")
}

print("Critical hit!")

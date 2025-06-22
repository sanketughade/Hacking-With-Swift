import UIKit

//We use loop if we want to perform some repetetive tasks.
//Loops can work with arrays, sets, etc. as shown in the below example.

let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works great on \(os)")
}

//If we want to loop over range of numbers, Swift provides a special operator know as range operator(...), where we can loop over a range of numbers.
//For example, we want to iterate over numbers from 1 to 12 including 1 and 12, then we can use the range operator as shown below.

for i in 1...12 {
    print("Value of i is \(i)")
}

//If we want to iterate upto 12 i.e not include 12, then below is how range operator can be used.

for i in 1..<12 {
    print("Value of i is \(i)")
}

//If we just want to iterate and not use the loop variable then we can use underscore(_) instead of a loop variable as shown in the below example.

var lyric = "Haters gonna"

for _ in 1...5 {
    lyric += " hate"
}

print(lyric)

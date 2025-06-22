import UIKit

//In loops, we use continue when we want to skip the current iteration and move on to next iteration.
//For example, given an array of file names where we want to only print the image file names, if we want some other file we will just continue instead of printing it as shown below.

let filenames = ["me.jpg", "work.txt", "sophie.jpg"]

for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue
    }
    print("Found picture: \(filename)")
}

//Break is used to terminate the loop.
//For example, if we want to find the first 10 numbers who are both multiples of number1 and number2, we will use break once the first 10 multiples are found as shown below.

let number1 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)
        
        if multiples.count == 10 {
            break;
        }
    }
}

print(multiples)

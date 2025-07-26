import UIKit

/*
 There is another way to unwrap optionals and that is using guards
 Below is the difference between IF LET and GUARD
 
 if let unwrapped = myVar {
    // Run if myVar has a value inside
 }
 
 guard let unwrapped = myVar else {
    // Run if myVar doesn't have a value inside
 }
 
 Swift requires you to use return if a guard check fails.
 If the optional you're unwrapping has a value, you can use it after the guard code finishes.
 Its not necessary that you use guard only with optionals you can also use it for other purposes like to check if an array is empty.
 Below example shows the use of guard inside a printSquare function
 Here as you can see, if the number is nil then the ELSE block wil execute printing "Missing input" and then return
 But if the number is not nil then the code after the guard will be executed and the constant number created inside guard will be available to use after the guard's code
 */

func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing input")
        return
    }
    
    print("\(number) x \(number) is \(number * number)")
}

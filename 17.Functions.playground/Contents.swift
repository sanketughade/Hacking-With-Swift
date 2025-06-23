import UIKit

//Whenever we want to reuse some code we wrap it inside a function and make a call to the function wherever we want to reuse it as shown below.

func showWelcome() {
    print("Welcome to my app!")
    print("By default This prints out a conversion")
}

showWelcome()

//We can pass data to a function using arguments where the function is called.
//In the function defination these are called parameters or placeholders. Below is an example of parameterized function.

func printTimesTables(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) * \(number) is \(i * number)")
    }
}

printTimesTables(number: 5, end: 20)

import UIKit

//We can provide default parameter values tofunction's parameters as shown in the below example.

func printTimesTable(for number: Int, end: Int = 12) { //end parameter has a default value of 12
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

//We can override the default parameter value at function's call site as below.

printTimesTable(for: 5, end: 20) //Overriden the end value by 20.
printTimesTable(for: 8) //Using the default parameter value of 12.

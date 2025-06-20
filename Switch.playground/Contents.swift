import UIKit


//To avoid multiple ELSE-IF blocks and to make the code look more cleaner we use SWITCH statement

//Switch must be exhaustive i.e it must cover all the possible cases.
//For example, below enum named Weather has sun, rain, wind, snow and unknown. So, there should be a switch case for each of this values else Swift will throw an error.

enum Weather {
    case sun, rain, wind, snow, unknown
}

let forecast = Weather.sun

switch forecast {
case .sun:
    print("It should be a nice day.")
case .rain:
    print("Pack an umbrella.")
case .wind:
    print("Wear something warm")
case .snow:
    print("School is cancelled.")
case .unknown:
    print("Our forecast generator is broken!")
}

//In case of strings, integers, etc it is not possible to cover all the cases, as there can be infinite combinations of strings.
//So, Swift provides a default case as below.

let place = "Metropolis"

switch place {
case "Gotham":
    print("You're Batman!")
case "Mega-City One":
    print("You're Judge Dredd!")
case "Wakanda":
    print("You're Black Panther!")
default:
    print("Who are you?")
}

//Other programming languages have break keyword at the end of each case, if a case is matched and it doesn't have break keyword all the subsequent cases after it also get executed
//But in Swift there is no such keyword like break and Swift explicitly executes "only" the case that it matches and not the subsequent cases.
//But Swift provides a functionality to execute subsequent cases after a case is matched using a fallthrough keyword as shown in the below example.

let day = 5
print("My true love gave to me...")

switch day {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}

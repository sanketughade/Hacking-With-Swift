import UIKit

//Sets are similar to arrays with below differences:
//1. Sets don't allow duplicate values.
//2. Sets don't remeber the order in which you stored the values.

let actors = Set(["Denzel Washington", "Tom Cruise", "Nicolas Cage", "Samuel L Jackson"])
//When you print the above set, the order("Denzel Washington", "Tom Cruise", etc) isn't guranteed.
print(actors)

//Another way of creating Sets and adding values to it
var otherActors = Set<String>()
otherActors.insert("Robert Downey Jr.")
otherActors.insert("Emma Stone")
otherActors.insert("Ryan Gosling")
otherActors.insert("Florence Pugh")

print(otherActors)

//Sets are much faster than arrays for finding items.
//For example, if an array and a set has 1000 items each, .contains() would work much faster on sets compared to an array.

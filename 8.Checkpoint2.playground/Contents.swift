import UIKit

//PROBLEM STATEMENT:
//Create an array of strings, then write some code that prints the number of items in the array and also the number of unique items in the array.

var fruits = ["apple", "banana", "orange", "apple", "banana"]
//Number of fruits
print(fruits.count)

//Number of unique fruits
print(Set(fruits).count)

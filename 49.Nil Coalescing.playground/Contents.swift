import UIKit

/*
 The nil coalescing operator(??) is used to provide a default value when an optional is nil.
 If optionalValue has a value, it's used.
 If optionalValue is nil, defaultValue is used instead.
 */

// In the below example the dictionary doesn't have a key "Serenity" so new constant will get an value of "N/A

let captains = [
    "Enterprise": "Picard",
    "Voyager": "Janeway",
    "Defiant": "Sisko"
]

let new = captains["Serenity"] ?? "N/A"
print(new)

/*
 Dictionary can also return a default value if the key is not found, for example the above code can also be written as,
 let new = captains["Serenity", default: "N/A"]
 */

/*
 In the below example, the randomElement() method on Array can return nil if the array is empty
 So, using nil coalescing operator we can check if the element returned by randomElement() is nil if YES then we can assign "None" as the value to the favorite constant
 */

let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
let favorite = tvShows.randomElement() ?? "None"

/*
 In the below example the Book struct has author property as an optional
 We can use nil coalescing operaor on the instance of Book to check if it has author present, if NOT then assign "Anonymous"
 */

struct Book {
    let title: String
    let author: String?
}

let book = Book(title: "Beowulf", author: nil)
let author = book.author ?? "Anonymous"
print(author)

/*
 When converting string to Int using Int() a nil value can also be returned if the string is not a number.
 As shown in the below example, an empty string is being passed to Int() so a nil value will be returned
 If a nil value is returned we can assign 0 to the number constant using nil coalescing operator
 */

let input = ""
let number = Int(input) ?? 0
print(number)

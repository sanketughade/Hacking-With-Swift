import UIKit

/*
 Optional chaining lets you safely access properties, methods, or subscripts on an optional that might be nil
 Instead of unwrapping it manually with IF LET or GUARD, you use ? to say:
 "Try to access this - but only if the optional isn't nil."
 */

/*
 As shown in the below example, the randomElement() method can return a nil and we want it to be converted to uppercased only if its not nil
 If randomElement() method returns nil then instead of further continuing with uppercased, nil is returned and nil coalescing operator returns "No one"
 */

let names = ["Arya", "Bran", "Robb", "Sansa"]
let chosen = names.randomElement()?.uppercased() ?? "No one"
print("Next in line: \(chosen)")

/*
 In the below example, we have a Book struct where the author property is an optional
 We want the first letter of the author to be uppercased
 But there can be a possibility where the book instance can be nil or the author property inside the book instance can be nil or the author's string can be empty in which case the .first would return nil
 So, we check all these possibilites using optional chaining and if the struct's instance or any property on it is found to be nil then the entire thing is returned as nil and nil coalescing operator would return "A"
 */

struct Book {
    let title: String
    let author: String?
}

var book: Book? = nil
let author = book?.author?.first?.uppercased() ?? "A"
print(author)

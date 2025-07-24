import UIKit

/*
 Extensions in Swift let you add new functionality to an existing class,ruct, enum, or protocol - without modifying the original source code.
 
 Why Are Extensions Useful?
 - Organize code better(e.g., split logic across files).
 - Add functionality to built-in types(like Int, String).
 - Conform to protocols cleanly.
 - Keep your types modular and reusable.
 */

/*
 In the below example, you can see that a extension of String has been created.
 The extension has trimmed function which can be called as f it was available on the String type.
 We can also add computed properties in the extension as shown in the below example.
 lines is a computed property which computes the number of lines in a given string
 */

extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
}

var quote = "  The truth is rarely pure and never simple "
let trimmed = quote.trimmed()
print(trimmed)

let lyrics = """
But I keep cruising
Can't stop, won't stop moving
It's like I got this music in my mind
Saying it's gonna be alright
"""

print(lyrics.lines.count)


/*
 In structs, when we add a custom initializer we lose the built-in initializer provided to us by Swift.
 To retain this in-built initializers along with custom initializers we can use extensions as shown in the below example.
 Here, book1 is initialized using built-in initializer and book2 is initialized using custom initializer
 */

struct Book {
    let title: String
    let pageCount: Int
    let readingHours: Int
}

extension Book {
    init(title: String, pageCount: Int) {
        self.title = title
        self.pageCount = pageCount
        self.readingHours = pageCount / 50
    }
}

let book1 = Book(title: "Lord of the Rings", pageCount: 1178, readingHours: 24)
let book2 = Book(title: "Lord of the Rings", pageCount: 1178)

print(book2.readingHours)

extension Array {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}


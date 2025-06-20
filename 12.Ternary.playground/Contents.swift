import UIKit

//Ternary operators are basically one-line if else statements as shown in the below examples.
let age = 18
let canVote = age >= 18 ? "Yes" : "No"
print(canVote)


enum Theme {
    case light, dark
}

let theme = Theme.dark

let background = theme == .dark ? "black" : "white"

print(background)

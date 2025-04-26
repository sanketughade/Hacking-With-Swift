import UIKit

let employee = ["name": "Taylor Swift", "job": "Singer", "location": "Nashville"]

//If you try to access any value in the dictionary using the key name, the value is always going to be an optional.
//Its optional because Swift doesn't gurantee that a value with a certain key can exists.
//You can use the 'default' parameter while accessing the key or force-unwrap the optional.

print(employee["name"])
print(employee["job", default: "Unknown"])
print(employee["location", default: "Unknown"])

//You can have value of any data-type assigned to a key inside the dictionary.
//As in the below example, the value is of type boolean.

let hasGraduated = [
    "Eric": false,
    "Maeve": true,
    "Otis": false
]

print(hasGraduated["Eric", default: false])

//You can have key of any data-type inside the dictionary.
//As in the below example, the key is of type Int.

let olympics = [
    2012: "London",
    2016: "Rio de Janeiro",
    2021: "Tokyo"
]

print(olympics[2012, default: "Unknown"])

//You cannot have two identical keys inside a string.
//If you have so, the old value of the key will be overwritten by the new value.
//As in the below example, the old value of Batman key(i.e "The Joker") will get overwritten by the new value(i.e "Penguin").

var archEnimies = [String: String]()
archEnimies["Batman"] = "The Joker"
archEnimies["Superman"] = "Lex Luthor"
archEnimies["Batman"] = "Penguin"

print(archEnimies["Batman", default: "Unknown"])

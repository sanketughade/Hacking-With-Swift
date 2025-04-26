import UIKit

//Enum (short for enumeration) is a special type in Swift that groups related values together in a type-safe way.

enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
}

var day = Weekday.monday
print(day)

enum Direction {
    case north
    case south
    case east
    case west
}

var travelDirection = Direction.north
travelDirection = .west

print(travelDirection)

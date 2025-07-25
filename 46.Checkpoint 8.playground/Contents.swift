import UIKit

protocol Building {
    var numberOfRooms: Int { get }
    var cost: Int { get }
    var agentName: String { get }
    func displaySalesSummary()
}

extension Building {
    func displaySalesSummary() {
        print("Number of Rooms: \(numberOfRooms)")
        print("Cost: \(cost)")
        print("Agent Name: \(agentName)")
    }
}

struct House: Building {
    let numberOfRooms: Int
    let cost: Int
    let agentName: String
}

struct Office: Building {
    let numberOfRooms: Int
    let cost: Int
    let agentName: String
}

let myHouse = House(numberOfRooms: 3, cost: 5000000, agentName: "Mr. Patil")
myHouse.displaySalesSummary()



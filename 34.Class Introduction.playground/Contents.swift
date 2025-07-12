import UIKit

/*
 Similarities between Struct and Class:
 - You get to create and name them.
 - Add properties, methods, property observers, and access control.
 - Create custom initializers to configure new instances.
 
 Differences between Struct and Class:
 - You can make one class build upon functionality in another class.
 - Swift won't generate a memberwise initializer for classes.
 - If you copy an instance of a class, both copies share the same data.
 - We can add a deinitializer to run when the final copy is destroyed.
 - Constant class instances can have their variable properties changed.
 
 */

//Below is a simple example of a class

class Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var newGame = Game()
newGame.score += 10

import UIKit

//Static properties and methods are available directly on the struct itself rather than on the struct's instances
//Static properties and methods can be accessed directly using the struct's name and there is no need for instance creation
/*
 In Swift, when you define a static var, it's like putting a single shared variable in a common area that everyone(all threads) can access.
 But this can cause problems if multiple threads try to use or change it at the same time - leading to unexpected or incorrect behavior(called a data race).
 
 🧠 Real-World Analogy: A Shared Whiteboard
 Imagine you work in a company office where:

 There is one whiteboard in a common meeting room.

 The whiteboard is used to track the number of employees hired.

 Whenever someone is hired, an HR person comes in and adds 1 to the number written on the board.

 ❌ What happens if there's no control?
 If 2 HR employees run into the room at the same time and both read "42" on the board:

 One decides to write "43"

 The other also decides to write "43"

 ❌ You just hired 2 people but the board only increased by 1!
 
 ✅ How does DispatchQueue help?
 Now imagine the company adds a rule:

 Only one person is allowed into the room at a time to use the whiteboard.

 There's a guard at the door (this is your DispatchQueue).

 If HR person A is inside, HR person B has to wait outside.

 So the updates happen one at a time, in a safe and orderly way.

 That’s exactly what DispatchQueue.sync { ... } does:
 It ensures that only one thread at a time can access the critical code inside.
 
 */

actor School {
    private static var studentCount = 0
    private static let queue = DispatchQueue(label: "SchoolQueue")
    
    static func add(student: String) {
        queue.sync {
            print("\(student) joined the school.")
            studentCount += 1
        }
    }
    
    static func printStudentCount() {
        queue.sync {
            print("Student Count: \(studentCount)")
        }
    }
    
}

import UIKit

/*
 When you're dealing with functiona=s that throw errors, and you want to handle failure using optionals, Swift gives you a handy tool:
 Use try? to convert a throwing function's result into an optional
 This means:
 If the function succeeds -> it returns the result.
 If it throws an error -> it returns nil.
 
 Using try? we don't get what the actual error was being thrown, the get the actual error thrown use DO-CATCH block
 */

// As shown in the below example the getUser function always throws an error so the try? will return nil and the IF LET block won't get executed

enum UserError: Error {
    case badID, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
}

if let user = try? getUser(id: 23) {
    print("User: \(user)")
}

//If we want to assign some other value to the user if the getUser() function throws an error then we can show nil coalescing operator as shown in the below example

let user = (try? getUser(id: 23)) ?? "Anonymous"
print(user)

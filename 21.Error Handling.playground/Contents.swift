import UIKit

enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }
    if password == "12345" {
        throw PasswordError.obvious
    }
    
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

let string = "12345"

//We use do-catch block to handle errors as shown in the below example.
//Inside try block we write the code which can possibly throw errors.

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch {
    print("There was an error.")
}

//We can use custom catch blocks to catch custom errors as shown in the below example.

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error.")
}


//If we are sure the code inside try won't throw any error we can use "try!" as shown in the below example.
//But we have to be extremely careful while using this approach becasue if the error occurs in this case and there is no error handler catch block then the app would crash.

let result = try! checkPassword(string)
print("Password rating: \(result)")

import UIKit

//Suppose we want some properties of the struct tob be modified by only the struct's methods and not outside
//That's where access controls comes into play
//In the below example, it won't be good if the fund property is modified from outside
//It should be allowed to modified only from inside the struct's methods

struct BankAccount {
    private(set) var funds = 0
    
    mutating func deposit(amount: Int) {
        funds += amount
    }
    
    mutating func withdraw(amount: Int) -> Bool {
        if funds > amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

var account = BankAccount()
account.deposit(amount: 100)

let success = account.withdraw(amount: 200)

if success {
    print("Withdrew money successfully")
} else {
    print("Failed to get the money")
}
print("Current funds: \(account.funds)")

/*
 Below are the access modifiers in Swift:
 1. private - Don't allow anything outside the struct use this.
 2. fileprivate - Don't let anything outside the current file use this.
 3. public - Let anyone, anywhere use this.
 4. private(set) - Let anyone, anywhere read this but can be set only inside struct methods.
 */

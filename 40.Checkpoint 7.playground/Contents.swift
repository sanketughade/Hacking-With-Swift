import UIKit

class Animal {
    let legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog: Animal {
    func speak() {
        print("Dog is barking!")
    }
}

final class Corgi: Dog {
    override func speak() {
        print("Corgi is barking!")
    }
}

final class Poodle: Dog {
    override func speak() {
        print("Poodle is barking!")
    }
}

class Cat: Animal{
    let isTame: Bool
    
    init(legs: Int, isTame: Bool) {
        self.isTame = isTame
        super.init(legs: legs)
    }
    
    func speak(){
        print("Cat is meowing!")
    }
}

class Persian: Cat{
    override func speak() {
        print("Persian is meowing!")
    }
}

class Lion: Cat {
    override func speak() {
        print("Lion is meowing!")
    }
}

let corgi = Corgi(legs: 4)
corgi.speak()

let persian = Persian(legs: 4, isTame: true)
persian.speak()

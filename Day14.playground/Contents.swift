import UIKit
// Function
// A group of statements that are enclosed in a single block where the block can be called or reused any where
// Function should be called for it to work
// Function can accept any number of params and of any type
// Function can have external and internal name for each param - When calling the function, the values are supplied using external params and within the function, we can use the internal params to get the value
// Function can return value after computation of the supplied return type at the time of declaration using `-> DataType`
func simpleAddFunc(of num1: Int, of num2: Int) -> Int {
    let result = num1 + num2
    return result
}
simpleAddFunc(of: 1, of: 3)

// Optionals
// When you dont get the value you expect of that data type, aka, nil
// use ? after Datatype to denote it can have optional value
// Optional can be unwrapped using if let or guard (it will immediately return)
// Optionals can be forcefully unwrapped by !, this is only safe when you FOR SURE know there is a return value. OTHERWISE code will crash
var x: String?
x = nil
x = "Akshay"
if let safeVar = x {
    print("I am safe \(safeVar)")
} else {
    print("BAD")
}

// Optional Chaining
// There are 2 methods
// a.b?.c  --> If b has value do operation c, if nil igonore whole and return nil
// nil coalescing optional ?? "Default Value" --> This ensure that you have a value abd code wont crash
var str: String?
str = "Tom"
str = nil // will return nil
// and code wont crash with these 2 below methods
let optionalChaining = str?.uppercased()
let nilCoalescing = str ?? "BAD"

// Enumerations
// own data type with enumerated values
// has predefined set of values
// avoids users typo error
// enums can have additional values like params
// Default enumerated by 0 otherwise can have a starter value

enum Sports {
    case CRICKET(type: String)
    case FOOTBALL
    case TENNIS
}

let cricket: Sports
cricket = .CRICKET(type: "IPL")

// Structs
// Own data structures with properties and methods
struct Animal {
    var name: String
    var numOfLegs: Int
    
    init(name: String, numOfLegs: Int) {
        self.name = name
        self.numOfLegs = numOfLegs
    }
    
    func printify() {
        print("\(name) : \(numOfLegs)")
    }
}

let dog = Animal(name: "Tom", numOfLegs: 4)
dog.printify()

// Classes
// Similar to struct
// should have initializers and can be inherited
// they are by reference in nature
// can be deallocated
// Functions of super class can be overidden in inheritence
// initialize based on super class, user super.init
class Developer {
    var name: String
    var numOfExpereience: Int
    
    init(name: String, numberOfExperience: Int) {
        self.name = name
        self.numOfExpereience = numberOfExperience
    }
    
    func myRole(){
        print("I am a Developer")
    }
}

class JuniorDeveloper: Developer {
    var nameOfDev: String
    
    init(nameOfDev: String) {
        self.nameOfDev = nameOfDev
        super.init(name: nameOfDev, numberOfExperience: 1)
    }
    
    override func myRole() {
        print("I am junior developer \(nameOfDev)")
    }
}

let ak = JuniorDeveloper(nameOfDev: "Ak")
ak.myRole()

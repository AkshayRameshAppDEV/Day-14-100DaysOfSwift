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

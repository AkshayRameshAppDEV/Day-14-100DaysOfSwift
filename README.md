# Day-14-100DaysOfSwift
Day 14 of 100 Days of Swift.

# Day 14

## Learnt the following:

## Review Day 14:

### 1. Function
  - A group of statements that are enclosed in a single block where the block can be called or reused any where
  - Function should be called for it to work
  - Function can accept any number of params and of any type
  - Function can have external and internal name for each param - When calling the function, the values are supplied using external params and within the function, we can use the internal params to get the value
  - Function can return value after computation of the supplied return type at the time of declaration using `-> DataType`

### 2. Optionals
  -  When you dont get the value you expect of that data type, aka, nil
  -  use ? after Datatype to denote it can have optional value
  -  Optional can be unwrapped using if let or guard (it will immediately return)
  -  Optionals can be forcefully unwrapped by !, this is only safe when you FOR SURE know there is a return value. OTHERWISE code will crash 
  
### 3. Optional Chaining
  - There are 2 methods
  - a.b?.c  --> If b has value do operation c, if nil igonore whole and return nil
  - nil coalescing optional ?? "Default Value" --> This ensure that you have a value abd code wont crash

### 4. Enumerations
  - own data type with enumerated values
  - has predefined set of values
  - avoids users typo error
  - enums can have additional values like params
  - Default enumerated by 0 otherwise can have a starter value

### 5. Structs
  - Own data structures with properties and methods

### 6. Classes
  - Similar to struct
  - should have initializers and can be inherited
  - they are by reference in nature
  - can be deallocated
  - Functions of super class can be overidden in inheritence
  - initialize based on super class, user super.init

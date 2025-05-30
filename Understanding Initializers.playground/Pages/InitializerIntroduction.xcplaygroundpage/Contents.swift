/*:
 [< Previous](@previous)                    [Home](Introduction)                    [Next >](@next)
 ## Introduction to Initializes
 An Initializer is a special method that prepares an instance of a class, struct, or enum for use by setting its initial values
 */
import Foundation

code(for: "Initialize instances of a Person Struct") {
  // Consider this struct
  struct Person {
    var name: String
    var age: Int
    var numChildren: Int?
    var married = false
  }
  // Create a default person
  let p1 = Person(name: "Manas", age: 30)
  
  // Create a person who has children AND is married
  let p2 = Person(name: "Qwerty", age: 30, numChildren: 1, married: true)
  
  // Create a person who has children and not married
  let p3 = Person(name: "Robert", age: 32, numChildren: 1)
  
  // Create a person who has no children but married
  let p4 = Person(name: "Lanister", age: 40, married: true)
}

code(for: "Rewrite the Person Struct as a Class") {
  class Person {
    var name: String
    var age: Int
    var numChildren: Int?
    var married = false
    
    init(name: String, age: Int) {
      self.name = name
      self.age = age
    }
  }
  
  // Create a default person
  let p1 = Person(name: "Manas", age: 30)
  
  // Create a person who has children AND is married
  let p2 = Person(name: "Billy", age: 56)
  p2.numChildren = 2
  p2.married = true
  
}
code(for: "Rewite the class with flexible initializer") {
  class Person {
    var name: String
    var age: Int
    var numChildren: Int?
    var married = false
  
    init(
      name: String,
      age: Int,
      numChildren: Int? = nil,
      married: Bool = false
    ) {
      self.name = name
      self.age = age
      self.numChildren = numChildren
      self.married = married
    }
  }
  
  // Create a person who has children and not married
  let p1 = Person(name: "Shelly", age: 40, numChildren: 2)
  print(p1.name, p1.age, p1.numChildren ?? 0, p1.married)
}

/*:
 [< Previous](@previous)                    [Home](Introduction)                    [Next >](@next)
 */

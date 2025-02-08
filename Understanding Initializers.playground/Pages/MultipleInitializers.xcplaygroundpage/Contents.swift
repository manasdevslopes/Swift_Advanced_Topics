/*:
 [< Previous](@previous)                    [Home](Introduction)                    [Next >](@next)
 ## Multiple initializers
 Classes and Structs can have many initializers
 */
import Foundation

code(for: "Multiple Initializers for struct") {
  struct Person {
    var name: String
    var age: Int
    var numChildren: Int?
    var married = false
    // Initializer to specify name, age and marital status
    init(name: String, age: Int, married: Bool) {
      self.name = name
      self.age = age
      self.married = married
    }
    
    // initializer for all 4 properties
    init(name: String, age: Int, numChildren: Int?, married: Bool) {
      self.name = name
      self.age = age
      self.numChildren = numChildren
      self.married = married
    }
    
    // initializer for name and age only with default nil for children and marital status false
    init(name: String, age: Int) {
      self.name = name
      self.age = age
      self.numChildren = nil
      self.married = false
    }
    
    // initializer for name, age and number of children, with default marriage status
    init(name: String, age: Int, numChildren: Int?) {
      self.name = name
      self.age = age
      self.numChildren = numChildren
    }
    
    // Initializer like the memberwise one.
    init(_ name: String, age: Int, numChildren: Int? = nil, married: Bool = false) {
      self.name = name
      self.age = age
      self.numChildren = numChildren
      self.married = married
    }
  }
  
  // Create people using each instance
  let p1 = Person(name: "Biily", age: 56, married: true)
  let p2 = Person(name: "Sally", age: 25, numChildren: 1, married: true)
  let p3 = Person(name: "Manas", age: 30)
  let p4 = Person(name: "Julie", age: 30, numChildren: 1)
  let p5 = Person("Emily", age: 5)
  
  print("P1 \(p1.name), \(p1.age), \(p1.married), \(p1.numChildren ?? 0)")
  print("P2 \(p2.name), \(p2.age), \(p2.married), \(p2.numChildren ?? 0)")
  print("P3 \(p3.name), \(p3.age), \(p3.married), \(String(describing: p3.numChildren))")
  print("P4 \(p4.name), \(p4.age), \(p4.married), \(p4.numChildren ?? 0)")
  print("P5 \(p5.name), \(p5.age), \(p5.married), \(String(describing: p5.numChildren))")
  
  // Create an array of 3 people using different intiailziers
  let family: [Person] = [
    Person(name: "Billy", age: 35, numChildren: 1),
    .init(name: "Aidan", age: 30),
    .init(name: "Francine", age: 26, married: true),
    .init(name: "Philip", age: 56, numChildren: 2, married: true)
  ]
  for member in family {
    print("\(member.name) of age \(member.age) has \(member.numChildren ?? 0) children and married: \(member.married)")
  }
}
/*:
 [< Previous](@previous)                    [Home](Introduction)                    [Next >](@next)
 */

/*:
 [< Previous](@previous)                    [Home](1%20Introduction)                    [Next >](@next)
 ## self
 - Callout(self): self refers to the current instance of the type.
 
 * To explicitly refer to instance properties or methods (useful in closures).
 */
import Foundation

code(for: "Class example") {
  class Person {
    var name: String
    init() {
      name = ""
    }
  }
  let person = Person()
  
  class Person2 {
    var name: String
    init(newName: String) {
      name = newName
    }
  }
  let person2 = Person2(newName: "Manas")
  
  class Person3 {
    var name: String
    init(name: String) {
      self.name = name
    }
  }
  let person3 = Person3(name: "Manas")
}

code(for: "Struct Example") {
  struct Person {
    var name: String
  }
  let person1 = Person(name: "Manas")
  
  struct Person2 {
    var name: String
    init(name: String) {
      self.name = name
    }
  }
  let person2 = Person2(name: "Manas")
}

code(for: "enum example") {
  enum TaskStatus {
    case pending
    case inProgress
    case completed
    
    func description() -> String {
      switch self {
        case .pending:
          return "Task is pending."
        case .inProgress:
          return "Task is in progress."
        case .completed:
          return "Task is completed."
      }
    }
  }
  let task = TaskStatus.inProgress
  print(task.description())
}

/*:
 [< Previous](@previous)                    [Home](1%20Introduction)                    [Next >](@next)
 */

/*:
 [< Previous](@previous)                    [Home](Introduction)                    
 ## Required initializers - class inherit from another class - required
 */
import Foundation

code(for: "Required Initializers for class") {
  class Animal {
    var name: String
    
    // Required initializer for the Animal class
    required init(name: String) {
      self.name = name
    }
    
    func makeSound() {
      fatalError("This method must be overridden by subclasses")
    }
  }
  
  class Dog: Animal {
    var breed: String
    
    required init(name: String) {
      self.breed = "Unknown"
      super.init(name: name)
    }
    
    // Additional initializer
    init(name: String, breed: String) {
      self.breed = breed
      super.init(name: name)
    }
    
    override func makeSound() {
      print("Woof!")
    }
  }
  
  class Cat: Animal {
    var color: String
    
    required init(name: String) {
      self.color = "Unknown"
      super.init(name: name)
    }
    
    // Additional initializer
    init(name: String, color: String) {
      self.color = color
      super.init(name: name)
    }
    
    override func makeSound() {
      print("Meow!")
    }
  }
  
  // Creating instances using the required initializer
  let myDog = Dog(name: "Buddy")
  let myCat = Cat(name: "Whiskers")
  
  // Creating instances using the additional initializers
  let goldenRetriever = Dog(name: "Max", breed: "Golden Retriever")
  let tabbyCat = Cat(name: "Mittens", color: "Tabby")

  
}
/*:
 [< Previous](@previous)                    [Home](Introduction)                   
 */



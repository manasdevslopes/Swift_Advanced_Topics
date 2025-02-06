/*:
 [< Previous](@previous)                    [Home](Introduction)                    [Next >](@next)
 ## Introduction to function closure parameters
 Using Closures in a function
 */
import Foundation

code(for: "Remove argument label") {
  // Function
  func sayHello(_ name: String) {
    print("Hello \(name)")
  }
  // Call Function
  sayHello("Manas")
}

code(for: "Add a second parameter as a closure") {
  // Function
  func sayHello(_ name: String, completion: () -> ()) {
    print("Hello \(name)")
    completion()
  }
  // Call function
  sayHello("Krishna", completion: {
    print("Done")
  })
}

code(for: "Same function but call using a trailing closure") {
  // Function
  func sayHello(_ name: String, completion: () -> ()) {
    print("Hello \(name)")
    completion()
  }
  // Call function
  sayHello("Manas") {
    print("Done")
  }
}

code(for: "Add a parameter to the closure") {
  // Function
  func sayHello(_ name: String, completion: (String) -> Void) {
    print("Hello \(name)")
    let reverseName = String(name.reversed())
    completion(reverseName)
  }
  // Call function
  sayHello("Manas") { type in
    print("Krishna: \(type)")
  }
}
/*:
 [< Previous](@previous)                    [Home](Introduction)                    [Next >](@next)
 */

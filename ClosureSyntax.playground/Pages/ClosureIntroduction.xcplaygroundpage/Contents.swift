/*:
 [< Previous](@previous)                    [Home](Introduction)                    [Next >](@next)
 ## Introduction to Closures
 A closure is a self-contained block of functionality that can be passed around and used in code like a variable. It is similar to a function, but does not require a name or the explicit use of `func` keyword to define it.
 */
import Foundation
// Consider this function
code(for: "Simple Function") {
  func sayHello() {
    print("Hello")
  }
  // Call the function
  sayHello()
}
code(for: "Rewrite as a closure") {
  let sayHello: () -> () = {
    print("Hello")
  }
  // Or,
  let sayHello1 = {
    print("Hello")
  }
  // Execute the closure
  sayHello()
  sayHello1()
}
code(for: "Function with parameter") {
  func sayHello(name: String) {
    print("Hello \(name)")
  }
  // Call the function by passing in an argument
  sayHello(name: "Manas")
}
code(for: "Rewrite as a closure") {
  let sayHello: (String) -> () = { name in
    print("Hello \(name)")
  }
  // Or,
  let sayHello1 = { (name: String) in
    print("Hello \(name)")
  }
  
  // execute the closure
  sayHello("Krishna")
  sayHello1("Manas")
}
/*:
 [< Previous](@previous)                    [Home](Introduction)                    [Next >](@next)
 */

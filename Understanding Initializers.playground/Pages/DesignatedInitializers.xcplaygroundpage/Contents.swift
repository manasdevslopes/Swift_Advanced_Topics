/*:
 [< Previous](@previous)                    [Home](Introduction)                    [Next >](@next)
 ## Designated initializers
 */
import Foundation

code(for: "Designated Initializers for class") {
  class Person {
    var name: String
    
    // Designated initializer
    init(name: String) {
      self.name = name
    }
  }
  var p1 = Person(name: "Manas")
  print("P1: \(p1.name)")
}
/*:
 [< Previous](@previous)                    [Home](Introduction)                    [Next >](@next)
 */


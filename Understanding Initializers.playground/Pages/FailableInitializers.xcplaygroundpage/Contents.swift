/*:
 [< Previous](@previous)                    [Home](Introduction)                    [Next >](@next)
 ## Failable initializers - init?
 */
import Foundation

code(for: "Failable Initializers for class") {
  struct Temperature {
    var celsius: Double
    
    // Failable initializer
    init?(fahrenheit: Double) {
      // Conversion logic
      if fahrenheit < -459.67 {
        return nil  // Invalid temperature
      }
      self.celsius = (fahrenheit - 32) * 5 / 9
    }
  }
  // Usage
  if let t1 = Temperature(fahrenheit: 98.6) {
    print("Temperature in Celsius: \(t1.celsius)")
  } else {
    print("Invalid temperature value")
  }
  
  if let t2 = Temperature(fahrenheit: -459.68) {
    print("Temperature in Celsius: \(t2.celsius)")
  } else {
    print("Invalid temperature value")
  }
}
/*:
 [< Previous](@previous)                    [Home](Introduction)                    [Next >](@next)
 */



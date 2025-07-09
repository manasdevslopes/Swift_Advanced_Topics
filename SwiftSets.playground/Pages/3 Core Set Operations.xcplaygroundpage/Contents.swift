/*:
 [< Previous](@previous)                    [Home](1%20Introduction)                    [Next >](@next)
 ## Core Set Operations
Explore the essential operations that make Sets powerful—adding, removing, and managing elements efficiently.
 */
import Foundation

var numbers = Set(1...10)
print(numbers)

code(for: "Adding elements") {
  numbers.insert(11)
  print(numbers)
  numbers.insert(4)
  print(numbers)
}

code(for: "Deleting Elements") {
  numbers.remove(4)
  print(numbers)
  numbers.remove(4)
  print(numbers)
}

code(for: "Clearing Elements") {
  numbers.removeAll()
  print(numbers)
}

/*:
 [< Previous](@previous)                    [Home](1%20Introduction)                    [Next >](@next)
 */         

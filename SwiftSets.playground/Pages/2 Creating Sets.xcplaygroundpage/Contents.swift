/*:
 [< Previous](@previous)                    [Home](1%20Introduction)                    [Next >](@next)
 ## Creating Sets
 If you’ve mostly used Arrays in Swift, you might be missing out on a powerful tool
 
 In this guide, we’ll explore what makes Sets unique, where they outperform Arrays, and when you should be using them in your code
 */
import Foundation

code(for: "Creating Sets") {
  // Type Inference
  let numbers : Set = [1,2,3,1,4,5,2]
  print(numbers)
  // Empty sets
  let emptyLetters: Set<String> = []
  let emptyNumbers = Set<Int>()
}

code(for: "Converting Sets <-> Arrays") {
  // Array
  var numbers = [1, 2, 3, 1, 2]
  print(numbers)
  // Convert to Set
  let setFromArray = Set(numbers)
  print(setFromArray)
  // Remove duplicates from array **
  numbers = Array(Set(numbers))
  print(numbers)
}

code(for: "Sets from Range") {
  // Integers from 1..10
  let rangeSet = Set(1...10)
  print(rangeSet)
}

code (for: "Sequence Initializer") {
  // Even numbers from 0 - 10
  let evens = Set(sequence(first: 0, next: { $0 < 10 ? $0 + 2 : nil }))
  print(evens)
  print(evens.sorted(by: <))
}
/*:
 [< Previous](@previous)                    [Home](1%20Introduction)                    [Next >](@next)
 */

/*:
 [< Previous](@previous)                    [Home](1%20Introduction)                    [Next >](@next)
 ## Query and Inspection
 Learn how to inspect a Set’s contents, check for membership, count elements, and safely access values like a random element or the first item.
*/
import Foundation

var odds:Set = [1,3,5,7,9]
print(odds)

code(for: "Count") {
  let count = odds.count
  print(count)
}

code(for: "IsEmpty") {
  let isEmpty = odds.isEmpty
  print(isEmpty)
}

code(for: "Contains") {
  print(odds.contains(5))
  print(odds.contains(2))
}

code(for: "First") {
  print(odds.first)
  print(odds.first)
}

code(for: "Random Element") {
  print(odds.randomElement())
  print(odds.randomElement())
}

/*:
 [< Previous](@previous)                    [Home](1%20Introduction)                    [Next >](@next)
*/
    

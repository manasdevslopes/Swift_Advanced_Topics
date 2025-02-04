/*:
 [< Previous](@previous)                    [Home](Introduction)                    [Next >](@next)
 ## Practical Examples
 - Callout(Topic): Some practical use cases.
 */
import Foundation


code(for: "Increment Score Example") {
  // Create a function that will increment a score in place
  func incrementScore(_ score: inout Int) {
    score += 1
  }
  var score = 0
  incrementScore(&score)
  print(score)
}

code(for: "Reverse Name") {
  // Create a function that will reverse a name like "Lynch, Stewart" in place and return "Stewart Lynch"
  func reverseName(_ name: inout String) {
    // var names = name.components(separatedBy: ",").reversed().map {$0.trimmingCharacters(in: .whitespacesAndNewlines)}
    // name = names.joined(separator: " ")
    name = name.components(separatedBy: ",").reversed().map {$0.trimmingCharacters(in: .whitespacesAndNewlines)}.joined(separator: " ")
  }
  var name = "Vijaywargiya, Manas"
  reverseName(&name)
  print(name)
}

code(for: "Multiple Function Parameters") {
  // Create a function that will add a new member to a family which is an array of strings
  func addMember(name: String, family: inout [String]) {
    family.append(name)
  }
  
  var vijaywargiyaFamily: [String] = []
  addMember(name: "Manas", family: &vijaywargiyaFamily)
  addMember(name: "Krishna", family: &vijaywargiyaFamily)
  addMember(name: "Dipti (Maa)", family: &vijaywargiyaFamily)
  addMember(name: "Bimal (Papa)", family: &vijaywargiyaFamily)
  print(vijaywargiyaFamily)
  for member in vijaywargiyaFamily {
    print("Hello, \(member)!")
  }
}

/*:
 [< Previous](@previous)                    [Home](Introduction)                    [Next >](@next)
 */

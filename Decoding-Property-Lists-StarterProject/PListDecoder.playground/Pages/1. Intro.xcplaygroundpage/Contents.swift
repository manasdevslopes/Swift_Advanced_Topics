/*:
 [< Previous](@previous)                    [Home](0.%20Introduction)                    [Next >](@next)
 ## Introduction
 - Callout(PropertyListDecoder): A brief introduction to PLists and the PropertyListDecoder)
*/
import Foundation

struct Person: Decodable {
  let name: String
  let age: Int
  let isAlive: Bool
  let siblings: [String]
}

/*
func decodePlist() -> Person {
  guard let url = Bundle.main.url(forResource: "Person", withExtension: "plist") else {
    fatalError("Failed to locate Person.Plist file")
  }
  
  guard let data = try? Data(contentsOf: url) else {
    fatalError("Failed to load file from Bundle")
  }
  
  let decorder = PropertyListDecoder()
  guard let decodedData = try? decorder.decode(Person.self, from: data) else {
    fatalError("Failed to decode file from Bundle")
  }
  return decodedData
}
*/

// let person: Person = decodePlist(from: "Person")
let person = decodePlist(Person.self, from: "Person")
print(person.name, person.age, person.isAlive, person.siblings, person.siblings.count)
person.siblings.forEach { sibling in
  print(sibling)
}

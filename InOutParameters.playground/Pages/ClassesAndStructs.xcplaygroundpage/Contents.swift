/*:
 [< Previous](@previous)                    [Home](Introduction)
 ## Classes and Structs
 - Callout(Topic): Classes are `rerefence` types and structs are `value` types.
 */
import Foundation

code(for: "Class Family Example") {
  // No need to use inout parameter in Class as it is pointing to the same referenced (location)
  class Family {
    var members: [String] = []
  }
  func addMember(name: String, family: Family) {
    family.members.append(name)
  }
  let vijaywargiyaFamily = Family()
  addMember(name: "Manas", family: vijaywargiyaFamily)
  addMember(name: "Krishna", family: vijaywargiyaFamily)
  addMember(name: "Dipti (Maa)", family: vijaywargiyaFamily)
  addMember(name: "Bimal (Papa)", family: vijaywargiyaFamily)
  
  for member in vijaywargiyaFamily.members {
    print(member)
  }
}

code(for: "Class Instance Function") {
  class Family {
    var members: [String] = []
    func addMember(name: String) {
      members.append(name)
    }
  }
  let vijaywargiyaFamily = Family()
  vijaywargiyaFamily.addMember(name: "Manas")
  vijaywargiyaFamily.addMember(name: "Krishna")
  vijaywargiyaFamily.addMember(name: "Dipti (Maa)")
  vijaywargiyaFamily.addMember(name: "Bimal (Papa)")
  
  for member in vijaywargiyaFamily.members {
    print(member)
  }
}

code(for: "Struct Family Example") {
  // Struct is a value type, so properties can't be mutated. So need to use inout
  struct Family {
    var members: [String] = []
  }
  func addMember(name: String, family: inout Family) {
    family.members.append(name)
  }
  var vijaywargiyaFamily = Family()
  addMember(name: "Manas", family: &vijaywargiyaFamily)
  addMember(name: "Krishna", family: &vijaywargiyaFamily)
  addMember(name: "Dipti (Maa)", family: &vijaywargiyaFamily)
  addMember(name: "Bimal (Papa)", family: &vijaywargiyaFamily)
  
  for member in vijaywargiyaFamily.members {
    print(member)
  }
}

code(for: "Struct Instance Function") {
  struct Family {
    var members: [String] = []
    mutating func addMember(name: String) {
      members.append(name)
    }
  }
  var vijaywargiyaFamily = Family()
  vijaywargiyaFamily.addMember(name: "Manas")
  vijaywargiyaFamily.addMember(name: "Krishna")
  vijaywargiyaFamily.addMember(name: "Dipti (Maa)")
  vijaywargiyaFamily.addMember(name: "Bimal (Papa)")
  
  for member in vijaywargiyaFamily.members {
    print(member)
  }
}

/*:
 [< Previous](@previous)                    [Home](Introduction)
 */

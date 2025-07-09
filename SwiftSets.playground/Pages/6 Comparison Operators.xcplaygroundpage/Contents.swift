/*:
 [< Previous](@previous)                    [Home](1%20Introduction)                    [Next >](@next)
 ## Comparison Operators
Compare Sets using subset, superset, and disjoint relationships to analyze how Sets relate to one another.
 */
import SwiftUI
let a: Set = [1, 2]
let b: Set = [1, 2, 3]
print("a:", a)
print("b:", b)

code(for: "Subset") {
  print(a.isSubset(of: b))
  print(b.isSubset(of: a))
  let c = a
  print(a.isSubset(of: c))
}

code(for: "Strictsubset") {
  print(a.isStrictSubset(of: b))
  print(b.isStrictSubset(of: a))
  let c = a
  print(a.isStrictSubset(of: c))
}

code(for: "Superset") {
  print(a.isSuperset(of: b))
  print(b.isSuperset(of: a))
  let c = a
  print(a.isSuperset(of: c))
}

code(for: "Strictsuperset") {
  print(a.isStrictSuperset(of: b))
  print(b.isStrictSuperset(of: a))
  let c = a
  print(a.isStrictSuperset(of: c))
}

code(for: "Disjoint") {
  print(a.isDisjoint(with: b))
}


//: [< Previous](@previous)                    [Home](1%20Introduction)                    [Next >](@next)

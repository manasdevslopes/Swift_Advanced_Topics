/*:
 [< Previous](@previous)                    [Home](1%20Introduction)                    [Next >](@next)
 ## Set Algebra
 Swift’s Set type supports powerful algebraic operations like union, intersection, and difference—ideal for solving complex data logic with ease
 */
import Foundation

let a: Set = [1, 2, 3]
let b: Set = [3, 4, 5]
print("a:", a)
print("b:", b)

code(for: "Union") {
  print(a.union(b))
}

code(for: "Intersection") {
  print(a.intersection(b))
}

code(for: "Subtraction") {
  let subtraction1 = a.subtracting(b)
  print(subtraction1)
  let subtraction2 = b.subtracting(a)
  print(subtraction2)
  print(subtraction1 == subtraction2)
}

code(for: "Symmetric Difference") {
  let symmetricDifference1 = a.symmetricDifference(b)
  print(symmetricDifference1)
  let symmetricDifference2 = b.symmetricDifference(a)
  print(symmetricDifference2)
  print(symmetricDifference1 == symmetricDifference2)
}


/*:
 [< Previous](@previous)                    [Home](1%20Introduction)                    [Next >](@next)
 */

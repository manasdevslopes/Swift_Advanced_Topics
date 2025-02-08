/*:
 [< Previous](@previous)                    [Home](Introduction)
 ## Extensions
 Writing extensions to some Swift types to create a subscript can make our code easier to deal with and safer.
 */

import Foundation


code(for: "String.Index") {
  // Consider this string
  var str = "hel⭐️lo"
  // print out the ⭐️ character using the string's index
  let idx = str.index(str.startIndex, offsetBy: 3)
  let starChar = str[idx]
  let starStr = String(starChar)
  print(starStr)
  // change the star to a ❤️ using the index
  let range = str.index(str.startIndex, offsetBy: 3)..<str.index(str.startIndex, offsetBy: 4)
  str.replaceSubrange(range, with: "❤️")
  print(str)
}

extension String {
  subscript(index: Int) -> String {
    get {
      let idx = self.index(self.startIndex, offsetBy: index)
      let char = self[idx]
      return String(char)
    }
    set(newValue) {
      guard index >= 0, index < count else { return }
      let range = self.index(self.startIndex, offsetBy: index)..<self.index(self.startIndex, offsetBy: index + 1)
      self.replaceSubrange(range, with: newValue)
    }
  }
}

code(for: "String Extension") {
  // 1. Use the space above this code block to write an subscript extension for String
  // 2. Use the extension to print the 4th character of the following string as a String
  var str = "hel⭐️lo"
  print(str[3])
  // replace the 4th character of the sample string with a ❤️
  str[3] = "❤️"
  print(str)
}

extension Array {
  subscript (safe index: Int) -> Element? {
    guard index >= 0 && index < count else { return nil }
    return self[index]
  }
}
code(for: "Safe Array Index") {
  // consider this array
  let numbers = [1,2,3,4]
  // 1. Use the space above this code block to write an extension for Array that will be a safe replacement for the array index to retrurn an optional value or nil if the index is out of range
  // 2. Verify by printing a valid and invalid index
  print(numbers[safe: 4])
  print(numbers[safe: 3])
}
/*:
 [< Previous](@previous)                    [Home](Introduction)
 */

/*:
 [< Previous](@previous)                    [Home](Introduction)
 ## Debug Print
 - Callout(Debug Print): Create a new print function that extends the usefulness of the variadic print function.
 */
import Foundation

code(for: "Namespace Debug print") {
  // Recreate the print function in an Enum namespace
  enum Debug {
    static func print(_ items: Any..., separator: String = " ", terminator: String = "\n") {
      Swift.print(items, separator: separator, terminator: terminator)
    }
  }
  
  Debug.print(1,2,3, separator: ",")
}

code(for: "Emoji previx") {
  // add a number of emoji cases to the enum and use as a prefix for the print
  enum Debug: String {
    case pin = "📌"
    case star = "⭐️"
    case note = "📝"
    case globe = "🌎"
    static func print(_ items: Any..., type: Self, separator: String = " ", terminator: String = "\n") {
      Swift
        .print(
          type.rawValue,
          items.map { "\($0)" }.joined(separator: separator),
          separator: separator,
          terminator: terminator)
    }
  }
  Debug.print("1,2,3", type: .pin)
}

code(for: "Debug Identifiers") {
  // Extend the function to allow for an optional set of Swift Keyword debug identifiers
  enum Debug: String {
    case pin = "📌"
    case star = "⭐️"
    case note = "📝"
    case globe = "🌎"
    static func print(_ items: Any...,
    type: Self /* Or, Debug, instead of Self */,
    extended: Bool = false,
    separator: String = " ",
    terminator: String = "\n") {
      Swift
        .print(
          type.rawValue,
          items.map { "\($0)" }.joined(separator: separator),
          separator: separator,
          terminator: terminator)
      if extended {
        Swift.print(
          """
          \(#fileID)
          function: \(#function)
          line: \(#line)
          -------------------------------------------------------------
          """
        )
      }
    }
  }
  Debug.print(1,2,3,4,5, type: .star, extended: true)
}
/*:
 [< Previous](@previous)                    [Home](Introduction)
 */

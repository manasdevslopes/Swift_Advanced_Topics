/*:
 [< Previous](@previous)                    [Home](1%20Introduction)
 ## Practical Examples
 Put Sets to work with real-world scenarios like tag filtering, permission checks, and detecting duplicates
 */
import Foundation

code(for: "Removing duplicates from user Entry") {
  let names = ["Alice", "Bob", "Charlie", "Alice"]
  let nameSet = Set(names)
  print(nameSet)
  print(names.count == nameSet.count)
}

code(for: "Tag Filtering System") {
  struct Post {
    let title: String
    let tags: Set<String>
  }
  let postsArray = [
    Post(title: "SwiftUI Tips", tags: ["Swift", "UI", "Tips"]),
    Post(title: "Xcode Tips", tags: ["Xcode", "Dev", "Tips"]),
    Post(title: "UI Tips", tags: ["iOSDev", "UI", "Tips"]),
  ]
  //find all posts with UI and Tips tags
  let filter: Set = ["UI", "Tips"]
  let uiTipsPosts = postsArray.filter { post in
    filter.isSubset(of: post.tags)
  }
  for post in uiTipsPosts {
    print(post)
  }
}

code(for: "Permissions Check") {
  enum Permission: String, CaseIterable {
    case read, write, execute
  }
  let userPermissions: Set<Permission> = [.read, .write]
  let required: Set<Permission> = [.read]
  
  if required.isSubset(of: userPermissions) {
    print("Access Granted")
  } else {
    print("Access Denied")
  }
}

code(for: "Lottery with Unique Winners") {
  var participants = Set(["Alice", "Bob", "Charlie", "Dave", "Alice"])
  if let winner = participants.randomElement() {
    print(winner)
    participants.remove(winner)
    print(participants)
  }
}

code(for: "Scheduling Conflict") {
  let busySlots: Set = ["9AM", "11AM"]
  let requestedSlots: Set = ["10AM", "11AM", "1PM"]
  let conflicts = busySlots.intersection(requestedSlots)
  print("Conflicts: \(conflicts)")
  let availableSlots = requestedSlots.subtracting(conflicts)
  print("Available slots: \(availableSlots)")
}


//: [< Previous](@previous)                    [Home](1%20Introduction)

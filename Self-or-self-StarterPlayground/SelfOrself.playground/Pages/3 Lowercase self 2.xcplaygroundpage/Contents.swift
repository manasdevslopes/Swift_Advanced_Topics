/*:
 [< Previous](@previous)                    [Home](1%20Introduction)                    [Next >](@next)
 ## self
 - Callout(self): self refers to the current instance of the type.

 * To explicitly refer to instance properties or methods (useful in closures).
*/
import Foundation

code(for: "Closures") {
  class IncrementManager {
    var count = 0
    func increment() {
      count += 1
      print("Count is now \(count)")
    }
    
    func incrementAsync() {
      DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
        self.count += 1 // Reference self
        print("After Async, Count is now \(self.count)")
      }
    }
    
    func incrementAsync1() {
      DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [self] in // Capture self
        count += 1
        print("After Async, Count is now \(count)")
      }
    }
  }
  let manager = IncrementManager()
  print(manager.count)
  manager.increment()
  manager.incrementAsync()
  manager.incrementAsync1()
}

code(for: "With Completion Handlers") {
    func getRandomCharacter(completion: @escaping (String) -> Void) {
        // Simulate a delay to mimic an asynchronous operation
        DispatchQueue.global().asyncAfter(deadline: .now() + 1) {
            let characters = "ABCDEFG"
            if let randomChar = characters.randomElement() {
                completion(String(randomChar)) // Return the random character
            } else {
                completion("") // Return an empty string in case of error
            }
        }
    }
    
  class DataManager {
    var stringArray: [String] = []
    
    func addToArrayCapture() {
      getRandomCharacter { [self] str in
        stringArray.append(str)
      }
    }
    
    func addToArrayWeakSelfCapture() {
      getRandomCharacter { [weak self] str in
        self?.stringArray.append(str) // Weak Reference , to avoid Retain Cycle
      }
    }
    
    func addToArrayStrongSelf() {
      getRandomCharacter { str in
        self.stringArray.append(str)
      }
    }
  }
}

/*:
 [< Previous](@previous)                    [Home](1%20Introduction)                    [Next >](@next)
*/

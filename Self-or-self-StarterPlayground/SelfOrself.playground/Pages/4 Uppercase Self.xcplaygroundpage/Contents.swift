/*:
 [< Previous](@previous)                    [Home](1%20Introduction)                    [Next >](@next)
 ## Self
 - Callout(Self): Self refers to the type itself (not an instance.)
 */
import Foundation

protocol Clonable {
  // Return the instance of the same type. In this case, we don't know the type of this protocol, so we return `Self`.
  func clone() -> Self
}

code(for: "Protocol Example") {
  struct Human: Clonable {
    func clone() -> Human {
      return Human(name: name)
    }
    
    var name: String
  }
  
  let me = Human(name: "Stewart")
  let mySon = me.clone()
}


code(for: "Factory Methods") {
  struct Car {
    var make: String
    var model: String
    enum VType {
      case  sport, suv, sedan
    }
    
    static func createCar(type: VType) -> Self {
      switch type {
        case .sport:
          Car(make: "Ferrari", model: "488 Spider")
        case .suv:
          Car(make: "Tata", model: "Curvv")
        case .sedan:
            .init(make: "Hyundai", model: "Santro")
      }
    }
  }
  
  let newCar = Car.createCar(type: .suv)
  print(newCar)
}
/*:
 [< Previous](@previous)                    [Home](1%20Introduction)                    [Next >](@next)
 */

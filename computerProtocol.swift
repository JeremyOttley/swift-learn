import Foundation

protocol Computer {
  var price: Double { get }
  var id: UUID { get }
  var quantity: Int { get }
}

struct PC: Computer {
  var price: Double
  var id: UUID
  var quantity: Int
}

struct MobileWorkStation: Computer {
  var price: Double
  var id: UUID
  var quantity: Int
}

struct Laptop: Computer {
  var price: Double
  var id: UUID
  var quantity: Int
}

struct Notebook: Computer {
  var price: Double
  var id: UUID
  var quantity: Int
}

let ibm = PC(price: 1588.92, id: UUID(), quantity: 23)
let alienware = MobileWorkStation(price: 1823.27, id: UUID(), quantity: 47)
let system76 = Laptop(price: 899.99, id: UUID(), quantity: 62)
let macbook = Notebook(price: 1270.69, id: UUID(), quantity: 7)

print("This IBM costs $\(ibm.price), has an ID of \(ibm.id), and we have  \(ibm.quantity) left")
print("This Alienware costs $\(alienware.price), has an ID of \(alienware.id), and we have  \(alienware.quantity) left")
print("This System76 costs $\(system76.price), has an ID of \(system76.id), and we have  \(system76.quantity) left")
print("This Macbook costs $\(macbook.price), has an ID of \(macbook.id), and we have \(macbook.quantity) left")

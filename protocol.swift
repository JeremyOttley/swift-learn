import Foundation

protocol Coordinates {
  var longitude: Double { get }
  var latitude: Double { get }
}

struct City: Coordinates {
  var name: String
  var longitude: Double
  var latitude: Double
}

let baltimore = City(name: "Baltimore", longitude: -79.6, latitude: 33.9)

print(baltimore.name)

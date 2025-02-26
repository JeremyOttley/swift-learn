struct Coordinates {
  var longitude: Double
  var latitude: Double

  func geolocation() -> (Double, Double) {
    return (self.longitude, self.latitude)
  }
}

var baltimore = Coordinates(longitude: 39.9, latitude: 76.6)

print("Lat: \(baltimore.latitude) and Long: \(baltimore.longitude)")
print(baltimore.geolocation())

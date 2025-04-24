struct Coordinates {
  var longitude: Double
  var latitude: Double

  func geolocation() -> (Double, Double) {
    return (self.longitude, self.latitude)
  }
}

var baltimore = Coordinates(longitude: -76.69699827245626, latitude: 39.306308027126164)

print("Lat: \(baltimore.latitude) and Long: \(baltimore.longitude)")
print(baltimore.geolocation())

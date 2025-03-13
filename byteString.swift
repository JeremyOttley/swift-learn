func stringToBytes(s: String) -> Array<UInt8> {
  return Array(s.data(using: .utf8)!) 
}

func bytesToString(b: Array<UInt8>) {
  if let result = String(data: Data(b), encoding: .utf8) {
    print(result) // Prints: Hello
  }
}

let x = "Jeremy"

let y = stringToBytes(s: x)
print(y)
bytesToString(b: y)

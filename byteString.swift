// Simple

import Foundation

// Convert String to bytes
let string = "Hello"
let bytes = Array(string.utf8)

// Convert bytes back to String
if let result = String(bytes: bytes, encoding: .utf8) {
    print(result) // Prints: Hello
}


// Idiomatic Swift (but more memory usage, both require foundation):

// Convert String to Data
let string = "Hello"
let data = string.data(using: .utf8)!
let bytes = Array(data)

// Convert back to String
if let result = String(data: Data(bytes), encoding: .utf8) {
    print(result) // Prints: Hello
}

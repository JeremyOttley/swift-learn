import Foundation

let name = "Jeremy"

print(name.lowercased())
print(name.capitalized(with: Locale(identifier: "en-US"))) // capital must be used with a Locale
print(name.localizedCapitalized) // capital must be used with a Locale
print(name.uppercased())

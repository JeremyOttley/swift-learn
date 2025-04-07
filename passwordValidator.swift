import Foundation

//https://i18n-puzzles.com/puzzle/3/

let passes = ["d9Ō", "uwI.E9GvrnWļbzO", "ž-2á", "Ģ952W*F4", "?O6JQf", "xi~Rťfsa", "r_j4XcHŔB", "71äĜ3"]

func checkASCII(_ string: String) -> Bool {
    return string.utf8.reduce(true) { $0 && ($1 <= 127) }
}

func hasNonASCII(_ s: String) -> Bool {
  return s.unicodeScalars.contains { $0.value > 127 }
}

func hasLowers(in s: String) -> Bool {
  return s.rangeOfCharacter(from: .lowercaseLetters) != nil
}

func hasDigits(in s: String) -> Bool {
  return s.rangeOfCharacter(from: .decimalDigits) != nil
}

func hasUppers(in s: String) -> Bool {
  return s.rangeOfCharacter(from: .uppercaseLetters) != nil
}

func isPassValid(_ p: String) -> Bool {
  guard p.count >= 4 && p.count <= 12 else {
    print("Character count must be between 4 and 12")
    return false
  }

  guard hasDigits(in: p) else { 
    print("Must have at least one digit")
    return false
  }

  guard hasUppers(in: p) else {
    print("Must have at least one uppercased letter")
    return false
  }
  guard hasLowers(in: p) else {
    print("Must have at least one letter")
    return false
  }

  guard hasNonASCII(p) else {
    print("All characters are 7-bit ASCII")
    return false
  }
  return true
}

for n in passes {
  print("\(n): \(isPassValid(n))")
}

// // More functional, but slightly less performant:
// passes.forEach { password in
//     print("\(password): \(isPassValid(password))")
// }
